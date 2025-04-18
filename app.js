const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const dotenv = require('dotenv');

dotenv.config({
    path: '../.env',
})

app.get('/', (req, res) => {
  res.send('Hello from Node.js CI/CD pipeline!');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});