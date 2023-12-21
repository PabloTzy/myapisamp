from flask import Flask, request
from urllib.parse import quote_plus
import os

app = Flask(__name__)

@app.route('/')
def trigger_code():
    host = request.args.get('host', '')
    port = request.args.get('port', '')
    time = request.args.get('time', '')

    if host and port and time:
        host = quote_plus(host)
        port = quote_plus(port)
        time = quote_plus(time)
        
        command = f'python3 udp.py -i{host} -p{port} -t{time} -th 10'
        os.system(command)
        return f'Code triggered with host={host}, port={port}, and time={time}'
    else:
        return 'Missing parameters: host, port, and time'

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080)
