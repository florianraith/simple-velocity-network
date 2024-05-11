# Very Simple Velocity Network

Run `docker compose up -d` to start the network.

The network consists of 1 velocity proxy and 2 paper servers `main` and `fallback`.  
You will be automatically connected to the `main` server (if it's running).

You can attach to the `main` server by running `./attach.sh`.

My main goal was to make local plugin development a bit easier. 
Instead of disconnecting from my main testing server i will be connected to the fallback server without ever leaving the network. 
This may be a bit questionable way of doing this, as it's a very resource intensive.