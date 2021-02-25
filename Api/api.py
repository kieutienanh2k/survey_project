from flask import Blueprint, request
from Controller.base_controller import RouteController

NewsId = Blueprint('NewsId', __name__)


@NewsId.route('/get_news_id/<news_id>', methods=['GET'])
def get(news_id):
    return RouteController().get_news_controller(news_id)


@NewsId.route('/add_news_id', methods=['POST'])
def add():
    data = request.get_json()
    print('data', data)
    list_val = []
    for value in data.values():
        list_val.append(value)
    print('list_val', list_val)
    return RouteController().add_news_controller(list_val)


@NewsId.route('/update_news_id/<news_id>', methods=['PUT'])
def update(news_id):
    data = request.get_json()
    list_val = []
    for value in data.values():
        list_val.append(value)
    print(list_val)
    return RouteController().update_news_controller(list_val, news_id)


@NewsId.route('/delete_news_id/<news_id>', methods=['DELETE'])
def delete(news_id):
    return RouteController().del_news_controller(news_id)


@NewsId.route('/get_all', methods=['GET'])
def get_all():
    return RouteController().get_all_controller()

