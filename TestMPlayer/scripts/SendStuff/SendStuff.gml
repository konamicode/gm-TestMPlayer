// ##################################
// all send* functions go either here, or in cmd/senders/

// examples:
function sendHello() {
	send({cmd: "hello", greeting: "hello there!"})
}

function sendMessage(msg) {
	send({cmd: "message", msg: msg})
}

function sendPad() {
	send({cmd: "pad", x: x, y: y, vsp: vsp, team: global.team})
}

function sendBall() {
	send({cmd: "ball", x: x, y: y, hsp: hsp, vsp: vsp})
}

