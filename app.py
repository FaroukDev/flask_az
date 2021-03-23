import os
import sys
from flask_mail import Mail
from flask_mail import Message


from flask import jsonify

from flask import (
    Flask,
    jsonify,
    render_template,
    request
)

import psycopg2

# from db import DB

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
    except Exception as err:
            print("Error :",err)
        
        
# @app.route("/send_data", methods=["POST"])
# def sendEmail():
#     mail = request.form.get('mail')
#     try:
#         with DB() as db:
#             name = db.getData(mail)
#             message = 'Message successfully send'
#     except Exception as e:
#         message = 'Failed to send email'
#     finally:
#         return render_template("index.html", name=name, message=message)





if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)