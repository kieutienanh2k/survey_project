from flask import Flask
from Api.api import NewsId
from flask_cors import CORS
import logging

app = Flask(__name__)
app.register_blueprint(NewsId)

logging.basicConfig(level=logging.INFO, filename="Log/global.log")
logging.getLogger('flask_cors').level = logging.DEBUG

cors = CORS(app, resources={r"/api/*": {"origins": "*"}})

if __name__ == "__main__":
    app.run(debug=True)
