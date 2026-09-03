const express = require('express');

const PORT = 4000;
const app = express();

app.get('/', (req, res) => {
    res.send('MAA');
});

app.listen(PORT, () => {
    console.log(`App is running on port: ${PORT}`);
});