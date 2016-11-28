def done_or_not(board): 
    for set in board:    # rows
        if not checkSet(set): return 'Try again!'
    for i in range(0,9): # coloumns
        set = []
        for j in range(0,9):
           set.append(board[j][i])
        if not checkSet(set): return 'Try again!'
    for x in range(0,3): # regions
        for y in range(0,3):
            set = []
            for i in range (0,3):
                for j in range (0,3):
                    set.append(board[(x*3) + i][(y*3) + j])
            if not checkSet(set):return 'Try again!'
    return 'Finished!'
               
def checkSet(list):
    for value in range(1,9):
        if list.count(value) != 1: return False
    return True