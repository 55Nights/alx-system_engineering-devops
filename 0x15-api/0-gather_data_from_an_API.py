#!/usr/bin/python3
"""This module contains requests to a REST API
"""
import requests
from sys import argv


if __name__ == "__main__":
    req = requests.get("https://jsonplaceholder.typicode.com/todos",
                       {'userId': argv[1]})
    name_req = requests.get("https://jsonplaceholder.typicode.com/users",
                            {'id': argv[1]})
    json_rep = req.json()
    name = name_req.json()
    name = name[0]["name"]
    total_tasks = 0
    complete_count = 0
    for item in json_rep:
        total_tasks += 1
        if item["completed"] is True:
            complete_count += 1
    print("Employee {} is done with tasks({}/{}):"
          .format(name, complete_count, total_tasks))
    for item in json_rep:
        if item["completed"] is True:
            print("\t {}".format(item["title"]))
