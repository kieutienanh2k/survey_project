from kafka.admin import KafkaAdminClient, NewTopic


def topic_kafka():
    topic_obj = 'topic_survey'
    topic_list = []
    admin_client = KafkaAdminClient(bootstrap_servers=['localhost:9092'])

    if topic_obj not in admin_client.list_topics():
        topic_list.append(NewTopic(name=topic_obj, num_partitions=5, replication_factor=1))
        admin_client.create_topics(new_topics=topic_list, validate_only=False)
    return


topic_kafka()
