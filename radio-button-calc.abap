DATA C TYPE I.
SELECTION-SCREEN BEGIN OF BLOCK B1 WITH FRAME TITLE TEXT-001.
PARAMETERS: A TYPE I OBLIGATORY,
            B TYPE I OBLIGATORY.
SELECTION-SCREEN END OF BLOCK B1.

SELECTION-SCREEN BEGIN OF BLOCK B2 WITH FRAME TITLE TEXT-002.

PARAMETERS: RAD1 RADIOBUTTON GROUP GRP1,
            RAD2 RADIOBUTTON GROUP GRP1,
            RAD3 RADIOBUTTON GROUP GRP1,
            RAD4 RADIOBUTTON GROUP GRP1,
            RAD5 RADIOBUTTON GROUP GRP1 DEFAULT 'X' .
SELECTION-SCREEN END OF BLOCK B2.

IF RAD1 EQ 'X'.
  C = A + B.
  WRITE: 'Sum of two numbers:', C.

ELSEIF RAD2 EQ 'X'.
  C = A - B.
  WRITE: 'Subtraction of two numbers:', C.

ELSEIF RAD3 EQ 'X'.
  C = A * B.
  WRITE: 'Multiplication of two numbers:', C.

ELSEIF RAD4 EQ 'X'.
  IF B = 0.
    WRITE: 'Division not possible (division by zero).'.
  ELSE.
    C = A / B.
    WRITE: 'Division of two numbers:', C.
  ENDIF.

ELSE.
  MESSAGE 'None radio button selected.' TYPE 'I'.
ENDIF.
