from kafka import KafkaProducer
import json


class PaginatePage:
    def producer_kafka(self):
        producer = KafkaProducer(bootstrap_servers=['localhost:9092'],
                                 value_serializer=lambda v: json.dumps(v).encode('utf-8'),
                                 key_serializer=lambda v: json.dumps(v).encode('utf-8'))
        return producer