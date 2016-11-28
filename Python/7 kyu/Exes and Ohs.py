def xo(s):
    X = 0
    O = 0
    for ch in s:
        if ch == "x" or ch == "X":
            X += 1        
        if ch == "o" or ch == "O":
            O += 1
    if X == O:
        return True
    return False