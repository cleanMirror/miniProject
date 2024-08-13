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
    const { userId, pwd, nickname } = req.body;

    var query = `INSERT INTO USERS VALUES ('${userId}', '${pwd}', '${nickname}', NULL)`;
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

// 서버 시작
app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
