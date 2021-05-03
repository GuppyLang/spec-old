flag "static"

use stdio as io from "stdio"
use Discord from "discord"

set client = Discord::Client::create(<token>)
set prefix = "b!"
set msg_collector = client.create_collector('message')

msg_collector.collect(fn (message: Instance) {
    #--
        Parse message here
    --#
})

client.listen()