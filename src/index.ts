import express, { Request, Response } from "express"
import cors from "cors"
import dotenv from 'dotenv'

const app = express();

app.use(express.json())
app.use(cors())

app.listen(Number(process.env.PORT), () => {
    console.log(`Servidor rodando na porta ${Number(process.env.PORT)}`)
})