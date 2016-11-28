def song_decoder(song):
    song = song.replace("WUB"," ")
    song = song.strip()
    while "  " in song:song  = song.replace("  "," ")
    return song
