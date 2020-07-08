#Add flickering like in the old-fashioned analog sources

src=last
ScriptClip("""
randcrop_w=rand(2)
randcrop_h=rand(2)
LanczosResize(width(src), height(src), randcrop_w, randcrop_h, -2+randcrop_w, -2+randcrop_h)
""")