def pascal(p):
    result = []
    for layer in range(0,p):
        layerResult=[]
        for number in range(0,layer+1):
            if number == 0 or number == layer: layerResult.append(1) ## do edges
            else: layerResult.append(result[layer-1][number-1]+result[layer-1][number])
        result.append(layerResult)
    return result