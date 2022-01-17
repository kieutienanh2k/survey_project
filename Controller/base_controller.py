from Model.news import News
from Kafka.producer_page import producer_view_count


class RouteController:

    def get_all_controller(self):
        return News().view_all()

    def get_news_controller(self, _id):
        return News.get_news(_id)

    def add_news_controller(self, list_value):
        producer_view_count(list_value)
        return 'success'

    def update_news_controller(self, data, _id):
        return News().update_news(data, _id)

    def del_news_controller(self, _id):
        return News().delete_news(_id)

    def git_rebase_2(self):
        return 1

    def check(self):
        return None