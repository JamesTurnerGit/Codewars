def scramble(s1,s2):    
    alphabet = sorted("abcdefghifklmnopqrstuvwxyz")
    for letter in alphabet:
        if not s1.count(letter) >= s2.count(letter): return False
    return True