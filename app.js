// membuat server di socket io
const app = require('express')()
const server = require('http').createServer(app)
const io = require('socket.io')(server, {})

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
})

// ketika ada user yg join
let countUserOnline = 1

io.on('connection', socket => {
    socket.on('join', params => {
        console.log('user join')
        countUserOnline++;
        io.emit('countUserOnline', countUserOnline)
    })

    socket.on('message', params => {
        console.log('user message')
        io.emit('message', params)
    })

    socket.on('disconnect', params => {
        console.log('user disconnect')
        countUserOnline--;
        io.emit('countUserOnline', countUserOnline);
    })
})

server.listen(3000)
