from flask import Flask, request, render_template

from flask import jsonify

from logger import log

import psycopg2

app = Flask(__name__)


@app.route('/')
@log
def hello():
    return "Bienvenue à tous !"


@app.route('/test')
@log
def showData():
    try:
        conn = psycopg2.connect(host='localhost',
                                    user='farouk',
                                    database='messi',
                                    password='pw123')
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM users;")
        print("ok")
        myresult = cursor.fetchall()
        #fermeture de la base de donnée
        conn.close()
        return jsonify(myresult)
    except Exception as e :
        print("Error :", e)

@app.route('/inc', methods=['GET', 'POST'])
@log
def increment():
    try:
        conn = psycopg2.connect(host='localhost',
                                    user='farouk',
                                    database='messi',
                                    password='pw123')
        sql_query = conn.cursor()
        sql_query.execute("INSERT INTO users (nom) VALUES ('simplon');")
        conn.commit()
        myresult = "insertion data"
        return jsonify(myresult)
    except Exception as e :
        print("Error :", e) 

@app.route('/id')
@log
def showCurentId():
    try:
        conn = psycopg2.connect(host='localhost',
                                    user='farouk',
                                    database='messi',
                                    password='pw123')
        cursor = conn.cursor()
        cursor.execute("SELECT id FROM users ORDER BY id DESC LIMIT 1;")
        print("ok")
        myresult = cursor.fetchall()
        #fermeture de la base de donnée
        conn.close()
        return jsonify(myresult)
    except Exception as e :
        print("Error :", e) 



if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)