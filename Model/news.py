from peewee import CharField, PrimaryKeyField, IntegerField
from Model.base_model import BaseModel
from flask import jsonify


class News(BaseModel):
    id = PrimaryKeyField()
    subject = CharField()
    description = CharField()
    image = CharField()
    original_url = CharField()
    view_count = IntegerField()

    def __unicode__(self):
        return self.id, self.subject, self.description, self.image, self.original_url, self.view_count

    @staticmethod
    def get_news(_id):
        get_id = News.get_by_id(_id)
        data = {
            'id': get_id.id,
            'subject': get_id.subject,
            'description': get_id.description,
            'image': get_id.image,
            'original_url': get_id.original_url,
            'view_count': get_id.view_count
        }
        print('data: ', data)
        return data

    # @staticmethod
    def add_news(self, data):
        try:
            print('data_model: ', data)
            list_data = eval(data)
            News.insert({'subject': list_data[0], 'description': list_data[1], 'image': list_data[2],
                         'original_url': list_data[3], 'view_count': list_data[4]}).execute()
        except Exception as ex:
            print('da xay ra loi: ', ex)
        return 'add success'

    # @staticmethod
    def update_news(self, data, _id):
        News.update({'subject': data[0], 'description': data[1], 'image': data[2],
                     'original_url': data[3], 'view_count': data[4]}).where(
            News.id == _id).execute()
        return 'update success'

    @staticmethod
    def delete_news(_id):
        try:
            News.delete_by_id(_id)
        except Exception as ex:
            print('da xay ra loi: ', ex)
        return 'delete success'

    def view_all(self):
        query = News.select().execute()
        list_data = []
        for row in query:
            data = {
                'id': row.id,
                'subject': row.subject,
                'description': row.description,
                'image': row.image,
                'original_url': row.original_url,
                'view_count': row.view_count
            }
            list_data.append(data)
        return jsonify(list_data)
