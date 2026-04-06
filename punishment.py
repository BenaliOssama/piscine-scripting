def do_punishment(first_part, second_part, nb_lines):
    sentence = first_part + " " + second_part + "."
    if nb_lines == 0:
        return ""
    return "\n".join([sentence] * nb_lines) + "\n"
