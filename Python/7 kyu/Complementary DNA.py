def DNA_strand(dna):
    output = ""
    for letter in dna:
        if   letter == "A":
            output += ("T")
        elif letter == "T": 
            output += ("A")
        elif letter == "C":
            output += ("G")
        elif letter == "G":
            output += ("C")
    return output
    # code here