import json
import os

def search(data, results):
    for key, value in data.items():
        if key in ('password', 'secret'):
            results[key] = value
        if isinstance(value, dict):
            search(value, results)




def credentials_search():
    if not os.path.exists('logs.json'):
        return

    with open('logs.json', 'r') as f:
        content = f.read()

    if not content.strip():
        return

    try:
        data = json.loads(content)
    expect json.JSONDecoderError:
        return

    results = {}

    search(data, results)

    if results:
        with open('credentials.json', 'w') as f:
            json.dump(results, f, indent=4)
