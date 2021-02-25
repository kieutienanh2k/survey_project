from flask import Flask
from Api.api import NewsId

app = Flask(__name__)

app.register_blueprint(NewsId)

if __name__ == "__main__":
    app.run(debug=True)
