def do_punishment(first_part, second_part, nb_lines):
    sentence = first_part + " " + second_part + "."
    return "\n".join([sentence] * nb_lines) + "\n"
