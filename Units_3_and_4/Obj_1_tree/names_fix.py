f = open("names.txt","r")


for line in f:
    g = line.strip()

f.close()

g = g.replace('"','')

h = open("names2.txt","w")
h.write(g)
