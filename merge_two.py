# merge_two.py

import json

def merge_two(first_dict):
    second_dict = {}

    while True:
        key = input("Enter key (or 'exit' to finish): ")
        if key == "exit":
            break

        value = int(input("Enter value: "))
        second_dict[key] = value

    merged = {**first_dict, **second_dict}

    return json.dumps(merged)
