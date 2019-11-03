var express = require("express");

const app = express();

app.get('/api/v1/hello', (req, res) => {
    res.send({
        sucess:'true',
    })
});

app.get('/api/v1/health', (req, res) => {
    res.status(200).send({
        message:"Service is Alive"
    })
});
const PORT=5000;

app.listen(PORT, () => {
    console.log(`Server started on ${PORT}`);
});