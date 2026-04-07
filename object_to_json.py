import json

class User:
    username = 'user'
    email = 'something@mail.com'

def create_new_user(registration_json):
    default = User()
    try:
        data = json.loads(registration_json)
    except (json.JSONDecodeError, TypeError):
        return default
    
    if 'username' not in data or 'email' not in data:
        return default
    
    user = User()
    user.username = data['username']  # written to the instance's __dict__
    user.email = data['email']
    return user

def user_to_json(user):
    return json.dumps(user.__dict__)
