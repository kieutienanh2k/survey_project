from peewee import Model, MySQLDatabase

conn = MySQLDatabase(host='localhost',
                     database='newdb',
                     user='sammy',
                     password='Password123!@#')


class BaseModel(Model):
    class Meta:
        database = conn
        db_table = 'news'




