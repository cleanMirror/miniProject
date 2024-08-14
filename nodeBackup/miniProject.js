const express = require('express');
const cors = require('cors');
const path = require('path');
const oracledb = require('oracledb');
const { connected } = require('process');

const app = express();
app.use(cors());
app.use(express.json() );

// ejs 설정
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, '.')); // .은 경로

const config = {
  user: 'SYSTEM',
  password: 'test1234',
  connectString: 'localhost:1521/xe'
};

// Oracle 데이터베이스와 연결을 유지하기 위한 전역 변수
let connection;

// 데이터베이스 연결 설정
async function initializeDatabase() {
  try {
    connection = await oracledb.getConnection(config);
    console.log('Successfully connected to Oracle database');
  } catch (err) {
    console.error('Error connecting to Oracle database', err);
  }
}

initializeDatabase();

// 엔드포인트
app.get('/', (req, res) => {
  res.send('Hello World');
});

app.post('/idCheck', async (req, res) => {
    const { userId } =  req.body;

    var query = `SELECT * FROM USERS WHERE ID = '${userId}'`;

    try {
        var result = await connection.execute(query);

        const columnNames = result.metaData.map(column => column.name);
        const rows = result.rows.map(row => {
        const obj = {};
        columnNames.forEach((columnName, index) => {
            obj[columnName] = row[index];
        });
        return obj;
        });

        res.json(rows);

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('error executing query');
    }
});

app.post('/nicknameCheck', async (req, res) => {
    const { nickname } =  req.body;

    var query = `SELECT * FROM USERS WHERE NICKNAME = '${nickname}'`;

    try {
        var result = await connection.execute(query);

        const columnNames = result.metaData.map(column => column.name);
        const rows = result.rows.map(row => {
        const obj = {};
        columnNames.forEach((columnName, index) => {
            obj[columnName] = row[index];
        });
        return obj;
        });

        res.json(rows);

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('error executing query');
    }
});

app.post('/signUp', async (req, res) => {
    const { userId, pwd, nickname, userNum } = req.body;

    var query = `INSERT INTO USERS VALUES ('${userId}', '${pwd}', '${nickname}', NULL, '${userNum}')`;
    try {
        await connection.execute(query, [], { autoCommit : true});
        res.json([{message: "추가되었습니다."}]);
    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }

});

app.post('/login', async (req, res) => {
    const { userId, pwd } =  req.body;

    var query = `SELECT * FROM USERS WHERE ID = '${userId}' AND PWD = '${pwd}'`;

    try {
        var result = await connection.execute(query);

        const columnNames = result.metaData.map(column => column.name);
        const rows = result.rows.map(row => {
        const obj = {};
        columnNames.forEach((columnName, index) => {
            obj[columnName] = row[index];
        });
        return obj;
        });

        res.json(rows);

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('error executing query');
    }
});

app.post('/init', async (req, res) => {
    const { userGames } = req.body;

    for (let item of userGames) {
        var userNum          = item.userNum;
        var characterNum     = item.characterNum;
        var gameRank         = item.gameRank;
        var damageToPlayer   = item.damageToPlayer;
        var damageFromPlayer = item.damageFromPlayer;
        var teamRecover      = item.teamRecover;
        var mmrGain          = item.mmrGain;
        var playerKill       = item.playerKill;
        var playerDeaths     = item.playerDeaths;
        var playerAssistant  = item.playerAssistant;
        var teamKill         = item.teamKill;
        var ccTimeToPlayer   = item.ccTimeToPlayer;
        var gameId           = item.gameId;

        var query = `MERGE INTO GAMES G
                    USING DUAL ON (G.GAME_ID = ${gameId})
                    WHEN MATCHED THEN
                        UPDATE SET G.USERNUM = ${userNum}
                    WHEN NOT MATCHED THEN
                        INSERT (G.USERNUM,
                                G.CHARACTER_NUM,
                                G.GAME_RANK,
                                G.DAMAGE_TO_PLAYER,
                                G.DAMAGE_FROM_PLAYER,
                                G.TEAM_RECOVER,
                                G.MMR_GAIN,
                                G.PLAYER_KILL,
                                G.PLAYER_DEATHS,
                                G.PLAYER_ASSISTANT,
                                G.TEAM_KILL,
                                G.CC_TIME_TO_PLAYER,
                                G.GAME_ID)
                        VALUES (${userNum},
                                ${characterNum},
                                ${gameRank},
                                ${damageToPlayer},
                                ${damageFromPlayer},
                                ${teamRecover},
                                ${mmrGain},
                                ${playerKill},
                                ${playerDeaths},
                                ${playerAssistant},
                                ${teamKill},
                                ${ccTimeToPlayer},
                                ${gameId})`;
        try {
            await connection.execute(query, [], { autoCommit : true});
        } catch (error) {
            console.error('Error executing query', error);
            res.status(500).send('Error executing query');
        }
    }
    res.json([{message: "추가되었습니다."}]);
});

app.post('/charInit', async (req, res) => {
    const { userId } = req.body;

    var query = `SELECT
                    COUNT(*) AS MATCHES,
                    G.CHARACTER_NUM,
                    ROUND(AVG(GAME_RANK), 1) AS GAME_RANK,
                    ROUND(AVG(DAMAGE_TO_PLAYER), 1) AS DAMAGE_TO_PLAYER,
                    ROUND(AVG(DAMAGE_FROM_PLAYER), 1) AS DAMAGE_FROM_PLAYER, 
                    ROUND(AVG(TEAM_RECOVER), 1) AS TEAM_RECOVER, 
                    ROUND(AVG(MMR_GAIN), 1) AS MMR_GAIN
                FROM USERS U
                INNER JOIN GAMES G ON U.USERNUM = G.USERNUM
                WHERE U.USERNUM = ${userId}
                GROUP BY G.CHARACTER_NUM
                ORDER BY COUNT(*) DESC`;

    try {
        var result = await connection.execute(query, [], { autoCommit : true});
        
        const columnNames = result.metaData.map(column => column.name);
        const rows = result.rows.map(row => {
            const obj = {};
            columnNames.forEach((columnName, index) => {
                obj[columnName] = row[index];
            });
            return obj;
        });

        res.json(rows);

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }
});

// 서버 시작
app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
