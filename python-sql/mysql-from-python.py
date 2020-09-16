import os
import pymysql

# Get username from
username = os.getenv('C9_USER')

# Connect to the database
connection = pymysql.connect(host='localhost',
                            user=username,
                            password='',
                            db='Chinook')

try:
    # Run a query
    with connection.cursor(pymysql.cursors.DictCursor) as cursor:
        sql = "SELECT * FROM Genre;"
        cursor.execute(sql)
        #result = cursor.fetchall()
        #print(result)
        for row in cursor:
            print(row)
finally:
    # Close connection
    connection.close()
