from Model.paginate_page import PaginatePage


def producer_view_count(value):
    producer = PaginatePage().producer_kafka()
    topic_obj = 'topic_survey'
    # send cac page vao kafka
    return producer.send(topic_obj, value=value)

