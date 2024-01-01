///@function	addHandler(cmd, handler)
///@param		{string} cmd
///@param		{method} handler
function addHandler(cmd, handler) {
	static init = false
	if (!init) {
		global.cmd_handlers = {}
		init = true
	}
	
	global.cmd_handlers[$ cmd] = handler
}

///@function	handlePacket(data)
///@param		{struct} data
function handlePacket(data) {
	// Deserialize/unpack msgpack into a struct
	var cmd = string_lower(data.cmd)	// you can get rid of the string_lower(),
																		// i just like the commands being lowercase
	
	switch(cmd) {
		// ##############################
		// You can add your custom commands below
		// or inside /cmd/handlers using addHandler(cmd, func)
		
		// simple examples:
		case "hello":
			trace(data.str)
			break
		case "message":
			show_message_async(data.msg+"\n (c) Server")			
			break
		case "ball":			
			with(oBall) {
				x = data.x
				y = data.y
				
				hsp = data.hsp
				vsp = data.vsp
				
			}
			break;
		case "pad":
			var team = data.team
			
			with(oPad) {
				if (self.team == team) {
					x = data.x
					y = data.y
					
					vsp = data.vsp
				}
			}
			
			break
		
		default:
			if (variable_struct_exists(global.cmd_handlers, cmd)) {
				global.cmd_handlers[$ cmd](data)
			}
			else {
				trace("Warning: Unknown cmd type: " + string(cmd))
			}
			break
	}
}