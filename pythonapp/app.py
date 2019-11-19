from flask import Blueprint
from flask_restful import Api
from resources.hello import Hello
from flask import Flask

#api_bp = Blueprint('api', __name__)
#api = Api(api_bp)

app = Flask(__name__)
api = Api(app)

# Route
api.add_resource(Hello, '/hello')
