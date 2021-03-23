import psycopg2

class DB():
    def __init__(self):
        self.conn = self.connection_db()
        self.createTable()
        self.insertData()


    def connection_db(self):
        try:
            conn = psycopg2.connect(host='localhost',
                                            user='farouk',
                                            database='az',
                                            password='pw123')
                                            
            print("Connected to my database")
            return conn
        except Exception as err:
            print("Error :",err)

    def createTable(self):
        print("hello")
        sql_query = self.conn.cursor()
        sql_query.execute("DROP TABLE users")
        sql_query.execute("CREATE TABLE IF NOT EXISTS users (id serial PRIMARY KEY NOT NULL, nom VARCHAR(100) NOT NULL)")
        self.conn.commit()
    
    # def getData(self,mail):
    #     sql_query = self.conn.cursor()
    #     sql_query.execute("SELECT * FROM users);")
    #     mydata = sql_query.fetchall()
    #     self.conn.commit()
    #     return mydata
        

    
    def insertData(self):
        try:
            sql_query = self.conn.cursor()
            sql_query.execute("INSERT INTO users (nom) VALUES ('delpiero');")
            sql_query.execute("INSERT INTO users (nom) VALUES ('raul ');")
            sql_query.execute("INSERT INTO users (nom) VALUES ('Zinedine');")
            sql_query.execute("INSERT INTO users (nom) VALUES ('Colin dagba');")
            sql_query.execute("INSERT INTO users (nom) VALUES ('georges weah');")
            sql_query.execute("INSERT INTO users (nom) VALUES ('Raul');")
            sql_query.execute("INSERT INTO users (nom) VALUES ('Mbappé');")
            self.conn.commit()
        except Exception as e:
            print("Error :", e)



db = DB()