from Model.news import News
from kafka import KafkaProducer
import json


class PaginatePage:
    # sum_record = News.select().count()
    # limit_record = 2
    # sum_page = int(sum_record / limit_record)

    def producer_kafka(self):
        producer = KafkaProducer(bootstrap_servers=['localhost:9092'],
                                 value_serializer=lambda v: json.dumps(v).encode('utf-8'),
                                 key_serializer=lambda v: json.dumps(v).encode('utf-8'))
        return producer