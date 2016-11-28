def palindrome_chain_length(n):
    result = 0 
    while(True):
        reverse = str(n)[::-1]
        if reverse == str (n): return result
        else: 
            result += 1
            n += int(reverse)