from kafka import KafkaConsumer
from Model.news import News


def consumer_view_count():
    try:
        print("start_consumer")
        topic_page = 'topic_survey'
        consumer = KafkaConsumer(topic_page, bootstrap_servers=['localhost:9092'],
                                 group_id="group_survey")
        # doc ra cac mess
        for message in consumer:
            record = message.value.decode('utf-8')
            print('message:', record)
            News().add_news(record)
    except KeyboardInterrupt:
        print('loading...')
    return


if __name__ == '__main__':
    consumer_view_count()
