from flask import Flask, flash, redirect, render_template, url_for

app = Flask(__name__)

@app.route('/result')
def result():
	return render_template('result.html')

@app.route('/Hardware-_-Cost')
def home():
    return 'Cost Listings Page'

if __name__ == '__main__':
    app.run(debug=True)
