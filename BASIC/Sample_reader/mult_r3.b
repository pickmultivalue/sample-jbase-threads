
OPEN "MULTI3" TO FH1 ELSE STOP 201, "MULTI3"

MAX_RECORDS = 18000
			     
FOR I = 1 TO MAX_RECORDS

	ITEMID = "ITEM":I


	MY_DATA = ""

	READ MY_DATA FROM FH1,ITEMID ON ERROR
		CRT "Error reading from file"
	END THEN
	END

NEXT I

CLOSE FH1
