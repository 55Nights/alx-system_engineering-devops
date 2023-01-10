#!/usr/bin/python3
"""This module contains requests to a REST API
"""
import requests
from sys import argv


if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/todos"
    url_users = "https://jsonplaceholder.typicode.com/users"
    id = argv[1]
    tasks = requests.get(url, {"userId": id}).json()
    user = requests.get(url_users, {"id": id}).json()
    name = user[0]["name"]
    complete = 0
    total = len(tasks)
    for task in tasks:
        if task["completed"] is True:
            complete = complete + 1
    print("Employee {} is done with tasks({}/{}):"
          .format(name, complete, total))
    for task in tasks:
        if task["completed"] is True:
            title = task["title"]
            print("\t {}".format(title))
