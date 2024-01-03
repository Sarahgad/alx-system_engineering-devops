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
    task_dict = {}
    url = 'https://jsonplaceholder.typicode.com/'
    users = get(url + 'users').json()
    todos = get(url + 'todos').json()
    for user in users:
        user_id = user.get('id')
        username = user.get('username')
        task_dict.update({user_id: [
            {"username": user.get('username'),
             "task": todo.get("title"),
             "completed": todo.get("completed")
             } for todo in todos
            if todo.get("userId") == user_id]})

    with open('todo_all_employees.json', 'w', newline="") as file:
        writ = json.dump(task_dict, file)
