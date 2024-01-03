#!/usr/bin/python3
"""
A given employee ID, returns information
about his/her TODO list progress.
"""


# 1) Import imp modules
import csv
import json
from requests import get
from sys import argv
if __name__ == '__main__':
    # 2) Fetching --> Get reques for api [Object response]
    user_id = argv[1]
    url = 'https://jsonplaceholder.typicode.com/'
    user = get(url + 'users/{}'.format(user_id)).json()
    username = user.get('username')
    todos = get(url + 'todos', params={"userId": user_id}).json()

    with open(user_id + '.csv', 'w', newline="") as file:
        writ = csv.writer(file, quoting=csv.QUOTE_ALL)
        [writ.writerow(
            [user_id, username, t.get('completed'), t.get('title')]
            ) for t in todos]
