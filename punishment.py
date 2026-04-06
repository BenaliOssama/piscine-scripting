def do_punishment(first_part, second_part, nb_lines):
    sentence = first_part + " " + second_part + "."
    result = "\n".join([sentence] * nb_lines)
    return result.strip("\n") + "\n" if result else ""
