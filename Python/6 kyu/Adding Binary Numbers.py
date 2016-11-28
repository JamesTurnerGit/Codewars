from operator import xor

def add(a,b):
    result = ""
    carry = False
    if len(a) < len(b): a , b = b , a  # make a longest
    for x in range(0,len(a)-len(b)): b = "0" + b # make b match
    for i,letter in enumerate(a[::-1]):
        A = bool(letter)
        B = bool(b[len(b) -1- i])
        if carry == True:
            if A and B:
                result = "1" + result #print 1
                carry = True
            elif A ^ B:
                result = "0" + result
                carry = True
            else:
                result = "1" + result
                carry = False          
        else:
            if A and B:
                result = "0" + result #print 1
                carry = True
            elif A ^ B:
                result = "1" + result
                carry = False
            else:
                result = "0" + result
                carry = False            
    if carry == True: result = "1" + result 
    result = result.lstrip("0")
    if result == "": result = "0"
    return result
def bool(a):
    if a == "0": return False
    return True