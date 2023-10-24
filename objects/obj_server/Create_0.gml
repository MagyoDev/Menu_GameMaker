//Iniciando o server

#macro PORT 45000
#macro MAX_CLIENTS 4

server = network_create_server(network_socket_tcp, PORT, MAX_CLIENTS)

clients = ds_map_create()
sockets = ds_list_create()