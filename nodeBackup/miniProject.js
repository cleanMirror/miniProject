const express = require('express');
const cors = require('cors');
const path = require('path');
const oracledb = require('oracledb');
const { connected } = require('process');

const app = express();
app.use(cors());
app.use(express.json());

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

app.post('/login', async (req, res) => {
    const { userId, pwd } = req.body;

    var query = `SELECT ID, NICKNAME, TO_CHAR(UPDATETIME, 'YYMMDD HH:MI:SS') AS UPDATETIME, USERNUM, MMR
                FROM USERS 
                WHERE ID = '${userId}' AND PWD = '${pwd}'`;

    try {
        var result = await connection.execute(query);

        res.json(jsonParse(result) );

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('error executing query');
    }
});

app.post('/idCheck', async (req, res) => {
    const { userId } = req.body;

    var query = `SELECT * FROM USERS WHERE ID = '${userId}'`;

    try {
        var result = await connection.execute(query);

        res.json(jsonParse(result) );

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('error executing query');
    }
});

app.post('/nicknameCheck', async (req, res) => {
    const { nickname } = req.body;

    var query = `SELECT * FROM USERS WHERE NICKNAME = '${nickname}'`;

    try {
        var result = await connection.execute(query);

        res.json(jsonParse(result) );

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('error executing query');
    }
});

app.post('/signUp', async (req, res) => {
    const { userId, pwd, nickname, userNum } = req.body;

    var query = `INSERT INTO USERS VALUES ('${userId}', '${pwd}', '${nickname}', NULL, '${userNum}', NULL)`;
    try {
        await connection.execute(query, [], { autoCommit: true });
        res.json([{ message: "가입되었습니다." }]);
    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }
});

app.post('/init', async (req, res) => {
    const { userGames } = req.body;

    var isNext = true;

    for (let item of userGames) {
        var query = `SELECT COUNT(*) AS CNT FROM GAMES WHERE GAME_ID = ${item.gameId}`;
        try {
            var result = await connection.execute(query, [], { autoCommit: true });
            var jsonResult = jsonParse(result);

            if (jsonResult[ 0 ].CNT != 0) {
                isNext = false;
            }

        } catch (error) {
            console.error('Error executing query', error);
            res.status(500).send('Error executing query');
        }
    }

    for (let item of userGames) {
        item.startDtm = item.startDtm.substr(5, 5);
        var query = `MERGE INTO GAMES G
                    USING DUAL ON (G.GAME_ID = ${item.gameId})
                    WHEN MATCHED THEN
                        UPDATE SET G.USERNUM = ${item.userNum}
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
                                G.GAME_ID,
                                G.START_TIME)
                        VALUES (${item.userNum},
                                ${item.characterNum},
                                ${item.gameRank},
                                ${item.damageToPlayer},
                                ${item.damageFromPlayer},
                                ${item.teamRecover},
                                ${item.mmrGain},
                                ${item.playerKill},
                                ${item.playerDeaths},
                                ${item.playerAssistant},
                                ${item.teamKill},
                                ${item.ccTimeToPlayer},
                                ${item.gameId},
                                '${item.startDtm}')`;
        try {
            await connection.execute(query, [], { autoCommit: true });
        } catch (error) {
            console.error('Error executing query', error);
            res.status(500).send('Error executing query');
        }
    }
    res.json([{ message: "입력되었습니다.", next : isNext }]);
});

app.post('/updateTime', async (req, res) => {
    const { userId } = req.body;
    try {
        await connection.execute(`UPDATE USERS
                                  SET UPDATETIME = SYSDATE
                                  WHERE ID = '${userId}'`
                                , [], { autoCommit: true });

        var result = await connection.execute(`SELECT TO_CHAR(UPDATETIME, 'YYMMDD HH:MI:SS') AS UPDATETIME
                                                FROM USERS
                                                WHERE ID = '${userId}'`);
        
        res.json(jsonParse(result) );

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }
});

app.post('/updateMMR', async (req, res) => {
    const { userId, mmr } = req.body;

    try {
        await connection.execute(`UPDATE USERS
                                  SET
                                        MMR = ${mmr}
                                  WHERE ID = '${userId}'`
                                , [], { autoCommit: true });

        var query = `SELECT MMR FROM USERS WHERE ID = '${userId}'`;
        var result = await connection.execute(query);

        res.json(jsonParse(result) );

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }
});

app.post('/charInit', async (req, res) => {
    const { userNum } = req.body;

    var query = `SELECT
                    COUNT(*) AS MATCHES,
                    G.CHARACTER_NUM,
                    ROUND(AVG(GAME_RANK), 1) AS GAME_RANK,
                    ROUND(AVG(DAMAGE_TO_PLAYER), 1) AS DAMAGE_TO_PLAYER,
                    ROUND(AVG(DAMAGE_FROM_PLAYER), 1) AS DAMAGE_FROM_PLAYER, 
                    ROUND(AVG(TEAM_RECOVER), 1) AS TEAM_RECOVER, 
                    ROUND(AVG(MMR_GAIN), 1) AS MMR_GAIN,
                    ROUND(AVG(PLAYER_KILL), 1) AS PLAYER_KILL,
                    ROUND(AVG(PLAYER_DEATHS), 1) AS PLAYER_DEATHS,
                    ROUND(AVG(PLAYER_ASSISTANT), 1) AS PLAYER_ASSISTANT,
                    ROUND(AVG(TEAM_KILL), 1) AS TEAM_KILL,
                    ROUND(AVG(CC_TIME_TO_PLAYER), 1) AS CC_TIME_TO_PLAYER
                FROM USERS U
                INNER JOIN GAMES G ON U.USERNUM = G.USERNUM
                WHERE U.USERNUM = ${userNum}
                GROUP BY G.CHARACTER_NUM
                ORDER BY COUNT(*) DESC`;

    try {
        var result = await connection.execute(query, [], { autoCommit: true });

        var rows = jsonParse(result);
        res.json(rows);

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }
});

app.post('/menuCheck', async (req, res) => {
    const { userId, menuCheck } = req.body;

    try {
        var query = `MERGE INTO MENU_CHECK M
                    USING DUAL ON (M.ID = '${userId}')
                    WHEN MATCHED THEN
                        UPDATE SET 
                            M.RANK = '${menuCheck.isViewRank}',
                            M.FROM_DAMAGE = '${menuCheck.isViewFromDamage}',
                            M.TO_DAMAGE = '${menuCheck.isViewToDamage}',
                            M.HEAL = '${menuCheck.isViewHeal}',
                            M.GAIN_RP = '${menuCheck.isViewGainRp}',
                            M.KILLS = '${menuCheck.isViewKills}',
                            M.DEATHS = '${menuCheck.isViewDeaths}',
                            M.ASSISTANT = '${menuCheck.isViewAssistant}',
                            M.TEAM_KILL = '${menuCheck.isViewTeamKill}',
                            M.CC_TIME = '${menuCheck.isViewCcTime}'
                    WHEN NOT MATCHED THEN
                        INSERT
                            (M.ID,
                            M.RANK,
                            M.FROM_DAMAGE,
                            M.TO_DAMAGE,
                            M.HEAL,
                            M.GAIN_RP,
                            M.KILLS,
                            M.DEATHS,
                            M.ASSISTANT,
                            M.TEAM_KILL,
                            M.CC_TIME)
                        VALUES ('${userId}',
                                '${menuCheck.isViewRank}',
                                '${menuCheck.isViewFromDamage}',
                                '${menuCheck.isViewToDamage}',
                                '${menuCheck.isViewHeal}',
                                '${menuCheck.isViewGainRp}',
                                '${menuCheck.isViewKills}',
                                '${menuCheck.isViewDeaths}',
                                '${menuCheck.isViewAssistant}',
                                '${menuCheck.isViewTeamKill}',
                                '${menuCheck.isViewCcTime}')`;

        await connection.execute(query, [], { autoCommit: true });
        res.json([{ message: "수정되었습니다." }]);
    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }
});

app.post('/getMenuCheck', async (req, res) => {
    const { userId } = req.body;

    var query = `SELECT * FROM MENU_CHECK WHERE ID = '${userId}'`;

    try {
        var result = await connection.execute(query);

        var rows = jsonParse(result);
        res.json(rows);

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }
});

app.post('/getGamesCount', async (req, res) => {
    const { userNum } = req.body;

    var query = `SELECT COUNT(*) AS TOTAL
                FROM GAMES
                WHERE USERNUM = ${userNum}`;

    try {
        var result = await connection.execute(query);

        var rows = jsonParse(result);
        res.json(rows);

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }
});

app.post('/getGamesPage', async (req, res) => {
    const { userNum, offset, pageSize } = req.body;

    var query = `SELECT * 
                FROM GAMES
                WHERE USERNUM = ${userNum}
                OFFSET ${offset} ROWS FETCH FIRST ${pageSize} ROWS ONLY`;

    try {
        var result = await connection.execute(query);

        var rows = jsonParse(result);
        res.json(rows);

    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).send('Error executing query');
    }
});

function jsonParse(result) {
    const columnNames = result.metaData.map(column => column.name);
    const rows = result.rows.map(row => {
        const obj = {};
        columnNames.forEach((columnName, index) => {
            obj[columnName] = row[index];
        });
        return obj;
    });

    return rows;
}

// 서버 시작
app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
