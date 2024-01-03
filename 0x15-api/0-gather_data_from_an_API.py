#!/usr/bin/python3
"""
A given employee ID, returns information
about his/her TODO list progress.
"""


# 1) Import imp modules
import json
from requests import get
from sys import argv
if __name__ == '__main__':
    # 2) Fetching --> Get reques for api [Object response]
    response_user = get('https://jsonplaceholder.typicode.com/users')
    response_todos = get('https://jsonplaceholder.typicode.com/todos')

    # 3) Json file [deserialization from response]
    user_data = response_user.json()
    user_todos = response_todos.json()
    done = 0
    list_done = []
    # 4) Task:

    user_id = argv[1]

    for user in user_data:
        if user['id'] == int(user_id):
            user_name = user['name']
            break

    for task in user_todos:
        if task['userId'] == int(user_id):
            if task['completed'] == 1:
                list_done.append(task['title'])
                done += 1


    print(f"Employee {user['name']} is done with tasks({done}/20):")

    for task in list_done:
        print(f"\t {task}")
