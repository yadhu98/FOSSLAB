BEGIN{
	count=0
        fcountMA201=0
	ocountMA201=0
	fcountHS200=0
	ocountHS200=0
	fcountCS201=0
	ocountCS201=0
	fcountCS203=0
	ocountCS203=0
	fcountCS205=0
	ocountCS205=0
	fcountCS207=0
	ocountCS207=0
	fcountCS231=0
	ocountCS231=0
	fcountCS233=0
	ocountCS233=0
        fecountMA201=0
	fecountHS200=0
	fecountCS201=0
	fecountCS203=0
	fecountCS205=0
	fecountCS207=0
	fecountCS231=0
	fecountCS233=0
      }
      	{count++}
	/MA201\(F\)/{fcountMA201++}
	/MA201\(O\)/{ocountMA201++}
	/MA201\(O\)/{MA2010[$1]="O"}
       	/HS200\(F\)/{fcountHS200++}
	/HS201\(O\)/{ocountHS200++}
	/MA201\(O\)/{HS2000[$1]="O"}
       	/CS201\(F\)/{fcountCS201++}
	/CS201\(O\)/{ocountCS201++}
	/CS201\(O\)/{CS2010[$1]="O"}
	/CS203\(F\)/{fcountCS203++}
	/CS203\(O\)/{ocountCS203++}
	/CS203\(O\)/{CS2030[$1]="O"}
	/CS203\(O\)/{ocountCS203++}
	/CS203\(O\)/{CS2030[$1]="O"}
       	/CS205\(F\)/{fcountCS205++}
	/CS205\(O\)/{ocountCS205++}
	/CS205\(O\)/{CS2050[$1]="O"}
        /CS207\(F\)/{fcountCS207++}
	/CS207\(O\)/{ocountCS207++}
	/CS207\(O\)/{CS2070[$1]="O"}
        /CS231\(F\)/{fcountCS231++}
	/CS231\(O\)/{ocountCS231++}
	/CS231\(O\)/{CS2310[$1]="O"}
        /CS233\(F\)/{fcountCS233++}
	/CS233\(O\)/{ocountCS233++}
	/CS233\(O\)/{CS2330[$1]="O"}
        /MA201\(FE\)/{fecountMA201++}
	/HS200\(FE\)/{fecountHS200++}
	/CS201\(FE\)/{fecountCS201++}
	/CS203\(FE\)/{fecountCS203++}
	/CS205\(FE\)/{fecountCS205++}
	/CS207\(FE\)/{fecountCS207++}
	/CS231\(FE\)/{fecountCS231++}
	/CS233\(FE\)/{fecountCS233++}
END{
	print "total count of students="count
	print "fail count in MA201="fcountMA201
	print "OS count in MA201="ocountMA201
	for(i in MA2010)
	{
		print i
	}
	print "fail count in HS200="fcountHS200
	print "OS count in MA201="ocountMA201
	for(i in MA2010)
	{
		print i
	}
	print "fail count in CS201="fcountCS201
	print "OS count in CS201="ocountCS201
	for(i in CS2010)
	{
		print i
	}
	print "fail count in CS203="fcountCS203
	print "OS count in CS203="ocountCS203
	for(i in CS2030)
	{
		print i
	}
	print "fail count in CS205="fcountCS205
	print "OS count in CS205="ocountCS205
	for(i in CS2050)
	{
		print i
	}
	print "fail count in CS207="fcountCS207
	print "OS count in CS207="ocountCS207
	for(i in CS2070)
	{
		print i
	}
	print "fail count in CS231="fcountCS231
	print "OS count in CS231="ocountCS231
	for(i in CS2310)
	{
		print i
	}
	print "fail count in CS233="fcountCS233
	print "OS count in CS233="ocountCS233
	for(i in CS2330)
	{
		print i
	}
	print "fe count in MA201="fecountMA201
	print "fe count in HS200="fecountHS200
	print "fe count in CS201="fecountCS201
	print "fe count in CS203="fecountCS203
	print "fe count in CS205="fecountCS205
        print "fe count in CS207="fecountCS207
	print "fe count in CS231="fecountCS231
	print "fe count in CS233="fecountCS233
	print "pass percentage of MA201=" (count-fcountMA201)*100/count
	print "pass percentage of HS200=" (count-fcountHS200)*100/count
        print "pass percentage of CS201=" (count-fcountCS201)*100/count
	print "pass percentage of CS203=" (count-fcountCS203)*100/count
	print "pass percentage of CS205=" (count-fcountCS205)*100/count
	print "pass percentage of CS207=" (count-fcountCS207)*100/count
	print "pass percentage of CS231=" (count-fcountCS231)*100/count
	print "pass percentage of CS233=" (count-fcountCS233)*100/count	
    	print "overall pass percentage of MA201=" (count-fcountMA201-fecountMA201)*100/count
	
	print "overall pass percentage of HS200=" (count-fcountHS200-fecountHS200)*100/count
        print "overall pass percentage of CS201=" (count-fcountCS201-fecountCS201)*100/count
	print "overall pass percentage of CS203=" (count-fcountCS203-fecountCS203)*100/count
	print "overall pass percentage of CS205=" (count-fcountCS205-fecountCS205)*100/count
	print "overall pass percentage of CS207=" (count-fcountCS207-fecountCS207)*100/count
	print "overall pass percentage of CS231=" (count-fcountCS231-fecountCS231)*100/count
	print "overall pass percentage of CS233=" (count-fcountCS233-fecountCS233)*100/count	
 }	

