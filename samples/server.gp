flag "static"

use Server from "server"
use stdio as io from "stdio"  
use port_number as port from "./config.gpm" 

set index = Server::create()

index.on_request = fn (context: Instance) {
    case context.request.endpoint {
        when "/" {
            context.request.respond("Hello, world!")            
        }
        else {
            context.request.respond("404")
        } 
    }       
}

index.on_listen = fn (port: Integer) {
    io::out("Server listening on port #{port}.")
}

index.listen(port)