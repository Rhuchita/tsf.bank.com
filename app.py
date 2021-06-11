from flask import Flask, render_template, request, redirect, url_for
from flask_mysqldb import MySQL
from flask_sqlalchemy import SQLAlchemy
import sqlalchemy

app = Flask(__name__)

app.secret_key = 'tsftask1'


app.config['MYSQL_HOST'] = 'Dreamer29.mysql.pythonanywhere-services.com'
app.config['MYSQL_USER'] = 'Dreamer29'
app.config['MYSQL_PASSWORD'] = 'Wonly75F'
app.config['MYSQL_DB'] = 'gripbbs'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'


mysql = MySQL(app)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/display')
def display():
    cursor = mysql.connection.cursor()
    rows = cursor.execute('SELECT * FROM gripbbs.transactions')
    if rows > 0:
        details = cursor.fetchall()
        return render_template('viewcust.html', details=details)


@app.route('/transfer', methods=['POST', 'GET'])
def transfer():
    if request.method == 'POST':
        fname = request.form['first_name']
        lname = request.form['last_name']
        acc = request.form['account']
        ifsc = request.form['ifsc']
        amt = request.form['amount']

        cursor = mysql.connection.cursor()
        rows = cursor.execute(
            'SELECT balance FROM gripbbs.transactions WHERE fname=%s AND lname=%s', (fname, lname))

        if rows > 0:
            info = cursor.fetchall()
            x = info[0]['balance']
            bal = str(int(x) + int(amt))
            cursor.execute(
                'UPDATE transactions SET balance=%s WHERE accno=%s', (bal, acc))
            row = cursor.execute('SELECT * FROM transactions')
            if row > 0:
                detail = cursor.fetchall()
            cursor.connection.commit()
            cursor.close()
            return render_template('viewcust.html', msg="Money Transfered successfully", details=detail, color='success')
        else:
            row = cursor.execute('SELECT * FROM transactions')
            if row > 0:
                detail = cursor.fetchall()
            return render_template('viewcust.html', msg="Money transaction failed", details=detail, color='danger')


if __name__ == '__main__':
    app.run(debug=True)
