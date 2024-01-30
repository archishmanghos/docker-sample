import Express from "express";
import dotenv from 'dotenv';

dotenv.config();
const PORT = process.env.PORT || 8080;
const app = Express();

app.get('/', (req, res) => {
    res.json({ message: 'App is running on docker container' });
});

app.listen(PORT, () => {
    console.log(`App running on port: ${PORT}`);
});