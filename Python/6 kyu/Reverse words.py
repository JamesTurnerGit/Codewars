def reverse_words(string):
    result = []
    string = string.split(" ")
    for word in string:result.append(word[::-1])
    return " ".join(result)