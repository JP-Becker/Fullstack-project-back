import express from "express"
import cors from "cors"
import dotenv from 'dotenv'
import { postRouter } from "./router/postRouter"
import { userRouter } from "./router/userRouter";

dotenv.config()

const app = express();
const local = process.env.PORT

app.use(express.json())
app.use(cors())

app.listen(local, () => {
    console.log(`Servidor rodando na porta ${local}`)
})

app.use("/users", userRouter)
app.use("/posts", postRouter)