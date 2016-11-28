def sum_dig_pow(a, b): # range(a, b + 1) will be studied by the function
    result = []
    for x in range(a,b+1):
        Sum = 0
        for i, char in enumerate(str(x)): 
            Sum += int(char) ** (i + 1)
        if Sum == x: result.append(Sum)          
    return result