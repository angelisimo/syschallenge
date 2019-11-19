from flask import Flask
from app import api,app
from resources.hello import Hello

#app = Flask(__name__)

#app.register_blueprint(api_bp, url_prefix='/hello')



if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0',port=8080)

