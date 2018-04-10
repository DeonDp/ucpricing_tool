from . import db

class handset(db.Model):
	harid =db.Column(db.Integer, primary_key=True)
	description=db.Column(db.String(255), unique=True)
	unitcost=db.Column(db.Float)
	supportcost=db.Column(db.Float)
	ttype=db.Column(db.String(255))

	def __init__(self, harid, description,unitcost,supportcost,trunktype):
		self.harid=harid
		self.description=description
		self.unitcost=unitcost
		self.supportcost=supportcost
		self.ttype=trunktype
	
	def __repr__(self):
		return '<hardwarecost %r>' % self.description

class headset(db.Model):
	harid =db.Column(db.Integer, primary_key=True)
	description=db.Column(db.String(255), unique=True)
	unitcost=db.Column(db.Float)
	supportcost=db.Column(db.Float)
	ttype=db.Column(db.String(255))

	def __init__(self, harid, description,unitcost,supportcost,trunktype):
		self.harid=harid
		self.description=description
		self.unitcost=unitcost
		self.supportcost=supportcost
		self.ttype=trunktype
	
	def __repr__(self):
		return '<hardwarecost %r>' % self.description


class gateway(db.Model):
	gateid =db.Column(db.Integer, primary_key=True)
	description=db.Column(db.String(255), unique=True)
	unitcost=db.Column(db.Float)
	supportcost=db.Column(db.Float)
	userlimit=db.Column(db.Integer)

	def __init__(self, harid, description,unitcost,supportcost,trunktype):
		self.harid=harid
		self.description=description
		self.unitcost=unitcost
		self.supportcost=supportcost
		self.userlimit=userlimit
	
	def __repr__(self):
		return '<hardwarecost %r>' % self.description


"""

class User(db.Model):
	id =db.Column(db.Integer, primary_key=True)
	username= db.Column(db.String(80), unique=True)
	email =db.Column(db.String(120),unique=True)

	def __init__(self, username, email):
		self.username =username 
		self.email =email

	def __repr__(self):
		return '<User %r>' % self.username

class hardwarecost(db.Model):
	harid =db.Column(db.Integer, primary_key=True)
	description=db.Column(db.String(255), unique=True)
	unitcost=db.Column(db.Float)
	supportcost=db.Column(db.Float)
	trunktype=db.Column(db.String(255))

	def __init__(self, harid, description,unitcost,supportcost,trunktype):
		self.harid=harid
		self.description=description
		self.unitcost=unitcost
		self.supportcost=supportcost
		self.trunktype=trunktype
	
	def __repr__(self):
		return '<hardwarecost %r>' % self.description
"""