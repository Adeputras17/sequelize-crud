const express = require('express');
const bodyParser = require('body-parser');
const cors = require ('cors');
const path = require('path')

const userRouter = require('./app/products/router')
const logger = require('morgan')


const app = express();

var corsOptions = {
    origin: "http://localhost:2000"
};

app.use(logger('dev'))
app.use(cors(corsOptions));

app.use(bodyParser.json());

app.use(bodyParser.urlencoded({extended:true}));
app.use('/public', express.static(path.join(__dirname, 'uploads')))
app.use('/api/v1', userRouter)
app.use((req, res, next)=>{
    res.status(404);
    res.send({
        status:'failed',
        message: 'Resource' + req.originalUrl + 'Not Found'
    })
})



const PORT = process.env.PORT || 8080;
app.listen(PORT, ()=> {
    console.log('server running on port ${PORT}.');
})