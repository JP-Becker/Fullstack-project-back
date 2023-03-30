export enum ROLE_USER{
    NORMAL = "NORMAL",
    ADMIN = "ADMIN"
}

export interface UserDB{
    id: string,
    username: string,
    email: string,
    password: string,
    role: ROLE_USER,
    created_at: string,
}