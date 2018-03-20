from flask import Flask, flash, redirect, render_template, url_for

app = Flask(__name__)


@app.route('/')
def home():
    return render_template('home.html')

@app.route('/result')
def result():
    return render_template('result.html')

@app.route('/Hardware-_-Cost')
def hardware():
    return render_template('equipments.html')

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

if __name__ == '__main__':
    app.run(debug=True)
