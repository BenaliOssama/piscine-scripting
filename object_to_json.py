# object_to_json.py

import json


class User:
    username = 'user'
    email = 'something@mail.com'

    def __init__(self, username=None, email=None):
        if username is not None:
            self.username = username
        if email is not None:
            self.email = email


def create_new_user(data):
    try:
        obj = json.loads(data)
    except Exception:
        return User()

    if isinstance(obj, dict) and "username" in obj and "email" in obj:
        return User(obj["username"], obj["email"])

    return User()


def user_to_json(user):
    if user.username == "user" and user.email == "something@mail.com":
        return json.dumps({})

    return json.dumps(user.__dict__)
