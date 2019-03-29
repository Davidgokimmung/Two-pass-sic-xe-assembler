PALIND   START   0
FIRST    LDB     #1
CLOOP    +JSUB   RDREC
         LDA     LENGTH
         COMP    #0
         JEQ     CLOOP
         LDT     #LENGTH
         SUBR    B,T
         +JSUB   CMPREC
LENGTH   RESW    1
RDREC    CLEAR   X
         CLEAR   A
         CLEAR   S
         +LDT    #4096
RLOOP    TD      INPUT
         JEQ     RLOOP
         RD      INPUT
         COMPR   A,S
         JEQ     EXIT1
         STCH    BUFFER,X
         TIXR    T
         JLT     RLOOP
EXIT1    STX     LENGTH
         RSUB
INPUT    BYTE    X'F1'
CMPREC   CLEAR   A
         COMPR   X,T
         JEQ     EXIT2
         JGT     EXIT2
         LDA     BUFFER,X
         LDS     BUFFER,T
         SUBR    B,T
         ADDR    B,X
         COMPR   A,S
         JEQ     CMPREC
         JLT     ERROR
         JGT     ERROR
EXIT2    LDA     #1
         STA     RESULT
ERROR    RSUB
RESULT   RESW    1
BUFFER   RESB    4096
         END     FIRST