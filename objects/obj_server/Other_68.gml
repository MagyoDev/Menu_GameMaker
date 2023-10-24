var event_id = async_load[? "id"]

if server == event_id {
	var type = async_load[? "type"]
	var sock = async_load[? "socket"]
	
	//connect
	if (type == network_type_connect) {
		//create a player, add the socket to the list
		ds_list_add(sockets, sock)
		
		//create a player 
		var p = instance_create_layer(100, 100+32*sock, "Instances", obj_player)
		
		ds_map_add(clients, sock, p)
	}
	//disconect
	if (type == network_type_disconnect) {
		var p = clients[? "sock"]
		if (instance_exists(p)) {
			with (p) {
				instance_destroy()
			}
		}
		
		ds_list_delete(sockets, ds_list_find_index(sockets, sock))
		ds_map_delete(clients, sock)
	}
}