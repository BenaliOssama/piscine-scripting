import datetime as dt

def to_do(tasks):
    with open('output.txt', 'w') as f:
        for date, task in tasks:
            formatted_date = date.strftime("%A %d %B %Y")
            f.write(f"{formatted_date}: {task}\n")
