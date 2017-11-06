Docker Tunnel
=============

## Really nothing more than `ssh -L`.

This is a very simple SSH tunnel image. It expects ssh keys to be shared by mounting the `ssh-agent` socket, and setting `SSH_AUTH_SOCK`.

Configure with a `TUNNEL` (user@host), `LOCAL` (bind_address:port), `REMOTE` (host:port).

### Example: MySQL over SSH

`docker run --rm -it -p 3306:3306 -e TUNNEL="user@remote" -e LOCAL="*:3306" -e REMOTE="mysqlserver:3306" -e SSH_AUTH_SOCK="/ssh-agent" -v $SSH_AUTH_SOCK:/ssh-agent tjlytle/tunnel`
