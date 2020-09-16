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
        cursor.execute("""CREATE TABLE IF NOT EXISTS
                      Friends(name char(20), age int, DOB datetime);""")
        # Note the above will still display a warning (not error) if the
        # table already exists
finally:
    # Close connection
    connection.close()
