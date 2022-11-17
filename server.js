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

app.get('/products', async(req, res) => {
    const client = await pool.connect()

    const {
        rows
    } = await client.query('SELECT * FROM products')

    client.release()

    res.send(rows)
})

app.get('/get/:name', async(req, res) => {
    const name = req.params.name
    const client = await pool.connect()

    const {
        rows
    } = await client.query(`SELECT worker_id, worker_name, worker_position, worker_cr_at FROM workers WHERE worker_name ILIKE '${name}%'`)

    client.release()

    res.json(rows)
})

app.listen(PORT, console.log(`Server running at port ${PORT}`))