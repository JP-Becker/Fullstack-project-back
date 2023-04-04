import { knex } from "knex"

export const db = knex({
    client: "sqlite3",
    connection: {
        filename: process.env.DB_FILE_PATH as string
    },
    useNullAsDefault: true, 
    pool: {
        min: 0, // número de conexões, esses valores são os recomendados para sqlite3
        max: 1,
				afterCreate: (conn: any, cb: any) => {
            conn.run("PRAGMA foreign_keys = ON", cb)
        } 
    }
})