from flask import Flask
import os

app = Flask(__name__)


@app.route('/postreceive', methods=['POST'])
def hello_world():
    os.system("./candy-web-ssr-pull.sh")
    return 'Hello World!'


if __name__ == "__main__":
    app.run()
