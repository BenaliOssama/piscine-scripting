# object_to_json.py

import json


class User:
    username = 'user'
    email = 'something@mail.com'


def create_new_user(data):
    # validate input
    if not isinstance(data, dict):
        return User()

    if "username" not in data or "email" not in data:
        return User()

    user = User()
    user.username = data["username"]
    user.email = data["email"]

    return user


def user_to_json(user):
    # convert user object to JSON string
    user_dict = {
        "username": user.username,
        "email": user.email
    }

    return json.dumps(user_dict)
