
OPEN "MULTI3" TO FH1 ELSE STOP 201, "MULTI3"

MAX_RECORDS = 18000
			     
FOR I = 1 TO MAX_RECORDS

	ITEMID = "ITEM":I

	X1 = I
	X2 = MAX_RECORDS - I

	MY_DATA = ""
	MY_DATA<1> = X1
	MY_DATA<2> = X2

	WRITE MY_DATA TO FH1,ITEMID ON ERROR
		CRT "Error writing to file"
	END

NEXT I

CLOSE FH1
