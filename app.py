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

from db import DB

app = Flask(__name__)



@app.route('/')
def az():
    return render_template("index.html")


@app.route('/getdata')
def getData():
    with DB()as db:
        data = db.getData()
        return jsonify(data)
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