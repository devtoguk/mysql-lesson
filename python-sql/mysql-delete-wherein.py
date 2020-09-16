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
        cursor.execute("DELETE FROM Friends WHERE name in ('Bob', 'Jim');")
        connection.commit()
finally:
    # Close connection
    connection.close()
