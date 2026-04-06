def clean_list(shopping_list):
    if len(shopping_list) == 0:
        return []
    if 'milk' not in shopping_list:
        shopping_list.append('milk')
    result = []
    for i , item in enumerate(shopping_list):
        cleaned = item.strip().capitalize()
        result.append(str(i+1) + "/" + cleaned)
    return result
