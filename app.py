import os
import sys
from flask_mail import Mail
from flask_mail import Message
from logger import log



from flask import (
    Flask,
    jsonify,
    render_template,
    request
)

import psycopg2

from db import DB

app = Flask(__name__)


app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 465
app.config['MAIL_USERNAME'] = 'extramilessimplon@gmail.com'
app.config['MAIL_PASSWORD'] = 'delpiero92'
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True


mail = Mail(app)

@app.route('/')
def az():
    return render_template("index.html")

@app.route('/send_msg', methods=['GET','POST'])
@log
def send_message():
    try:
        if request.method == 'POST':
            email = request.form['email']
            subject = request.form['subject']
            msg = request.form['message']
            message = Message(subject,sender="extramilessimplon@gmail.com",recipients=[email])
            message.body = msg
            mail.send(message)
            success = "Message successfully send"
            return render_template("result.html", success=success)
    except Exception as e:
            raise Exception(e)
        

@app.route('/send_data', methods=['GET','POST'])
def get_data():
    db = DB()
    data_players = db.getData()
    return jsonify(data_players)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)





