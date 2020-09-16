import os
import datetime
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
    with connection.cursor() as cursor:
        cursor.execute("UPDATE Friends SET age = %s WHERE name = %s;", (23, 'Bob'))
        connection.commit()
finally:
    # Close connection
    connection.close()