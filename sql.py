import mysql.connector as connector

class dbuser:
  def __init__(self):
    self.mydb = connector.connect(
                                host="localhost",
                                user="dbuser",
                                password="swaroop@4468",
                                database = "test")
    query = 'create table if not exists students(roll int,username varchar(200), code varchar(1000))'
    cur = self.mydb.cursor()
    cur.execute(query)
    print("Created")

  def insert_user(self, roll, username, code):
    query ="insert into students (roll,username,code)VALUES({},'{}','{}')".format(roll,username,code)
    print(query)
    cur = self.mydb.cursor()
    cur.execute(query)
    self.mydb.commit()
    print('User details saved')

  def fetch_all(self):
    query = "select * from students"
    cur = self.mydb.cursor()
    cur.execute(query)
    for row in cur:
      print()
      print("Roll: ",row[0])
      print("Username: ",row[1])
      print("Code: ",row[2])



#main code
db = dbuser()
#db.insert_user(10, "20pa1a0410", "print(a+b)")
#db.insert_user(2416, "20pa1a0416", "print(a+b)")
#db.insert_user(1415, "20pa1a0415", "print(a+b)")
db.fetch_all()