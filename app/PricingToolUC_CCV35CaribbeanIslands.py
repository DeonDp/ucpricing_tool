from app import app
from flask import Flask, flash, redirect, render_template, jsonify,url_for,request,json
from flask_sqlalchemy import SQLAlchemy
from flaskext.mysql import MySQL
from dbmodels import *;

#app = Flask(__name__)
#app.config['SQLALCHEMY_DATABASE_URI']='mysql+pymysql://root:81892@localhost/myUC'
#db=SQLAlchemy(app)


l=[]
hl=[]

@app.route('/home')
def home():
    return render_template('home.html')

@app.route('/entry')
def entrypage():
	return render_template('udesc.html')

@app.route('/info')
def form():
	handsets=handset.query.all()
	hs=[]
	gateways=gateway.query.all()
	global l
	global hl
	for hardware in handsets:
		for desc in hl:
			if hardware.description==desc:
				hs+=[hardware]
	return render_template('info.html',handsets=handsets,gateways=gateways,hs=hs)

@app.route('/user_wants')
def uw():
	global l
	global hl
	l=[]
	hl=[]
	handsets=handset.query.all()
	r = request.args.get('r', False, type=bool)
	m = request.args.get('m', False, type=bool)
	e = request.args.get('e', False, type=bool)
	c = request.args.get('c', False, type=bool)
	userc=request.args.get('u',"false,false,false,false",type=str)
	l=userc.split(",")
	for hs in handsets:
		if(hs.description not in hl):
			if l[0]=="true":
				if hs.ttype=="Regular":
					hl+=[str(hs.description)]
			if l[1]=="true":
				if hs.ttype=="Mid-Range":
					hl+=[str(hs.description)]
			if l[2]=="true":
				if hs.ttype=="Executive":
					hl+=[str(hs.description)]
			if l[3]=="true":
				if hs.ttype=="Conference":
					hl+=[str(hs.description)]
	#utypec=[False,False,False,False];
	#utypec=request.form["ucttype"];
	return jsonify(handset_cat=l,handset=hl)

@app.route('/userrequest',methods=['GET', 'POST'])
def userrequest():
	if request.method=="POST":
		result=handset.query.all()
	return render_template("userrequest.html",results = result)

"""@app.route('/test_info',methods=['GET','POST'])
def test_form():
	if request.method == 'POST':	
		user=User(request.form['username'],request.form['email'])
		db.session.add(user);
		db.session.commit()
	return render_template('test_info.html')
"""

@app.route('/Hardware-_-Cost',methods=['POST'])
def hardware():
	if request.method=="POST":
		l=[]
		c,c1,c2=0,0,0
		handsets=handset.query.all()
		gateways=gateway.query.all()
		for hardware in handsets:
			if hardware.ttype!="Accessory":
				try:
					h=request.form[hardware.description]
					l+=[[hardware,"h"]]
				except KeyError,e:
					pass
		for hardware in gateways:
			try:
				h=request.form[hardware.description]
				l+=[[hardware,"a"]]
			except KeyError,e:
				pass
		for hardware in handsets:
			if hardware.ttype=="Accessory":
				try:
					h=request.form[hardware.description]
					l+=[[hardware,"p"]]
				except KeyError,e:
					pass
		result=l		
		ln=request.form["locationno"]
		if ln =='1':
			c1=request.form["userno1"]
			if c1 == '':
				c1=0
		else:
			c1=request.form["userno1"]
			c2=request.form["userno2"]
			if c1 == '':
				c1=0
				if c2 == '':
					c2=0
			elif c2=='':
				c2=0
		c=int(c1)+int(c2)
	return render_template('equipments.html',results = result,quantity=c)

@app.route('/result')
def result():
    return render_template('result.html')

@app.route('/mrc')
def mrc():
	return render_template('mrc_eqmnt.html')

@app.route('/mrc_total')
def mrc_total():
	return render_template('mrc_total.html')

@app.route('/rates')
def rates():
	return render_template('rates.html')

@app.route('/additional_info')
def additional():
	return render_template('additional.html')

@app.route('/_add_numbers')
def add_numbers():
    a = request.args.get('a', 0, type=int)
    b = request.args.get('b', 0, type=int)
    return jsonify(result=a + b)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/login')
def login():
	return "Login Page goes here"

if __name__ == '__main__':
    app.run(debug=True)
