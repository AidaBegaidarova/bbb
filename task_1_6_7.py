import socket, os

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(("127.0.0.1", 2222))
s.listen(10)
for i in range(10):
    os.fork()
    if pid==0:
        while True:
            conn, addr = s.accept()
            data = conn.recv(1024)
            conn.send(data)
            print(data)
            conn.close()
