# xfreerdp Notes

xfreerdp - an X11 Remote Desktop Protocol (RDP) client

Start the server with:

```bash
xfreerdp /w:1200 /h:640 /u:username@server /v:server.org
```

Plugin part starts with "--plugin" and ends with "--", for example

```bash
xfreerdp --plugin rdpdr -data disk:home:/home --
```
