xs = ["-"*i for i in xrange(1,10)]
axioms = []
for x in xs: axioms.append("".join([x,"p-q",x,"-"]))

theorems = []
for a in axioms: 
	[x, rest] = a.split("p")
	[y, z] = rest.split("q")
	theorems.append("".join([x,"p",y,"-","q",z,"-"]))