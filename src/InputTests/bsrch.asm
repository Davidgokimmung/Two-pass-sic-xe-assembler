PROG    START   0    
BSRCH   EQU     6000
OFFB    EQU     8 
        BASE    DELTA
        LDB     #DELTA
        LDS     #3
        +LDX     @FOO
        +LDA     BETA,X
        ADD     GAMMA
        LDX     @ZETA   
FIRST   NORM  
        SVC     13  
        HIO
        LDT     #ALPHA
        +LDT     #FOO
        LDA     @ALPHA
        LDA     @FOO
        ADDR    S,T
        SHIFTR  T,2
        SHIFTL  S,1
        TIXR    T
        J       FIRST
        +J      FIRST
        CLEAR   T
        +LDT    #50000	
        LDX     #0
        +JSUB    BSRCH
ADDL    LDA     ALPHA,X   
        ADD     BETA,X
        STA     GAMMA,X     
        ADDR    S,T
        COMPR   X,T
        +JLT     ADDL
        JLT     ADDL
        RSUB    
ALPHA   RESW    100
BETA    RESW    100
GAMMA   RESW    100  
DELTA   WORD    20 
ZETA    BYTE    C'EOF' 
ETA     BYTE    X'FFFFFE'
THETA	BYTE	C'EOF'
BUFFER  RESB    3000
FOO     WORD    1
        END     PROG    
