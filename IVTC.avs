#inverse telecine
tfm(mode=1,pp=5,slow=2,micmatching=2,clip2=tdeint(mode=2,type=3)) 
tdecimate()

#Hard Telecine anime
AnimeIVTC(mode=1)

#Field Blended anime
AnimeIVTC(mode=2)

#Double hard telecined anime
AnimeIVTC(mode=3)