from flask import Flask
from flask_sqlalchemy import SQLAlchemy

#SECRET_KEY = 'Sup3r$3cretkey'

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI']='mysql+pymysql://root:81892@localhost/myUC'
#app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True # added just to suppress a warning
db = SQLAlchemy(app)

app.config.from_object(__name__)
from app import PricingToolUC_CCV35CaribbeanIslands 