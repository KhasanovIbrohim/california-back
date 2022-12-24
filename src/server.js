const express = require('express')
const app = express()
const cors = require('cors')
app.use(cors())
app.use(express.json())
const {
    Pool
} = require('pg')
const PORT = process.env.PORT || 5000;

const pool = new Pool({
    connectionString: 'postgres://obbxbpsj:YSyZz4xRiGsG9xwWkpL8rQETp2tcmCe2@satao.db.elephantsql.com/obbxbpsj'
})

app.get('/', async(req, res) => {
    const client = await pool.connect()

    const {
        rows
    } = await client.query('SELECT * FROM products')

    client.release()

    res.send(rows)
})

app.listen(PORT, console.log(`Server running at port ${PORT}`))