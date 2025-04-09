>> To create package:
	se21-> package name -> {jerom jerom hobe} -> se80 -> view

>> To create program:
	se80-> right click on package -> create -> program

>> To Print:
	write 'print statement'.

>> To Input: 
	parameters: p type i obligatory, q type i obligatory.

>> To Declare: 
	data r type i

>> If-Else:
	IF NUMBER > 0.
    		WRITE 'Number is Even & +ve'.
	ELSEIF NUMBER = 0.
		WRITE 'bhul bhal'.
  	ELSE.
    		WRITE 'Number is Even & -ve'.
  	ENDIF.

>> CASE WHEN:
	CASE NUMBER.
  	WHEN 0.
    		WRITE 'This is Zero'.
  	WHEN OTHERS.
    		IF NUMBER > 0.
      			WRITE 'Number is +ve'.
    		ELSE.
      			WRITE 'Number is -ve'.
    		ENDIF.
	ENDCASE.


>> To print like table:
	ULINE.
	WRITE: 1 'Name', 10 sy-vline, 'Role', 30 sy-vline, 'EmailID', 60 sy-vline.
	ULINE.
	WRITE:/1 'Ansar', 10 sy-vline, 'ABAP', 30 sy-vline, 'abc@gmail.com', 60 sy-vline.
	ULINE.
	WRITE:/1 'Rajarshi', 10 sy-vline, 'HANA', 30 sy-vline, 'xyz@gmail.com', 60 sy-vline.
	ULINE.
	WRITE:/1 'Nath', 10 sy-vline, 'SAP', 30 sy-vline, 'mno@gmail.com', 60 sy-vline.
	ULINE.


>> PRACTICE: calculator (with radio button), +ve/-ve/0 (by If-Else + Case When), Print like a table

>> DDIC: 
To Create Domain: 
	Package -> Right Click -> Create -> Dictionary Object -> Domain -> DO as Reqd (NUMC, CHAR, DATS) -> CHECK -> ACTIVATE

To Create Data Element:
	Dictionary Object -> Right Click -> Create -> Data Element -> DOMAIN (in DATA TYPE: er bhitor domain er naam dite hobe eg: Z_246_D_PDate) -> press ENTER 
		-> FIELD LABEL -> oi sob alfal likhe debo 

To Create Database Table: (DB TABLE Name CANNOT have '_' in 2nd and 3rd place)
	Dictionary Object -> Right Click -> Create -> Database Table -> Delivery and Maintainance: (Delivery Class: A | Display Maintainance Allowed)
	-> (MANDT | All your Data Elements die Enter) -> Check -> Activate -> (Data Class: APPL0 | Size: 0) -> Save -> Create entry-> Display


(To Create Entry/ Display: More -> Utilities -> Table content -> Display/ Create Entries)


To make SUNDOR DISPLAY:
	se16 -> User Parameters -> (Key Word: Field Label | Output List: AVL List/ as u like)

To add Structure to Table:
1. go to SE11 -> select Data Type -> enter Z[SAPID]_SEMP (e.g., Z247_SEMP) -> click CREATE -> choose structure
2. add component details (check screenshot 1)
3. check, save and activate
4. go back to SE11 page
5. select database table -> enter your table name (e.g., ZORTABLE_247) -> click Change
6. after the PMODE field, add .INCLUDE -> press enter
7. in the same row, enter your structure name (Z247_SEMP) under Data Element ->

WHY Use Structure?
1. Add/Edit Attributes in DB Table (new fields append korte hole --> Structure)