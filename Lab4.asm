.ORIG x3000
	
      LDI R1, n
      AND R2, R2, #0
      ADD R2, R2, #1
      ADD R2, R2, #-3
      ADD R2, R1, R2
      BRp POS
      AND R4, R4, #0
      ADD R4, R4, #1
      STI R2, Fn
      BR skip
      
POS   AND R2, R2, #0
      ADD R2, R2, #1
      AND R3, R3, #0
      ADD R3, R3, #1
      ADD R5, R1, #-2
      
LOOP  ADD R4, R2, R3
      ADD R2, R3, #0
      ADD R3, R4, #0
      ADD R5, R5, #-1
      BRp LOOP

     STI R4, Fn
      AND R2, R2, #0
      ADD R2, R2, #1
      AND R3, R3, #0
      ADD R3, R3, #1
      AND R5, R5, #0
      ADD R5, R5, #2

LOOP2 ADD R4, R2, R3
      BRn NEG
      ADD R2, R3, #0
      ADD R3, R4, #0
      ADD R5, R5, #1
      BRp LOOP2
     
NEG AND R6, R6, #0
    ADD R6, R5, #0
    STI R6, N2
    STI R3, FN2
skip
    HALT

n   .FILL x3100
Fn  .FILL x3101
N2   .FILL x3102
FN2  .FILL x3103
    .END

    .ORIG x3100
    .FILL #20
    .END
