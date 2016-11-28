def race(v1, v2, g):
    delta = v2 - v1
    if delta <= 0:return None    
    time = g / delta 
    h =  int(time)
    m =  int(time * 60 - h * 60)
    s =  int(time * 3600 - h * 3600 - m * 60)
    return ([h,m,s])