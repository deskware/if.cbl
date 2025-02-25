

      ****************************************
      * Program name: if.cbl
      * This program demonstrates the use
      * of the IF command.
      *
      * Copyright 2000 Deskware, Inc.
      ****************************************                                                             
      * Syntax: IF  [THEN]
      *         END-IF.
      *
      * Syntax: IF  [THEN]
      *         ELSE
      *         END-IF.
      *
      * Syntax: IF  [THEN]
      *         ELSIF 
      *         ELSIF 
      *           :
      *         ELSIF 
      *         ELSE
      *         END-IF.
      *                                                               
       1 variable1             PIC 9(05).
       1 variable2             PIC X.
       1 variable3             PIC X(20).
       1 variable4             PIC X.
        
       DISPLAY `This program demonstrates IF ELSE END-IF`.

       MOVE 5            TO variable1.
       MOVE `N`          TO variable2.
       MOVE `deskware`   TO variable3.
       MOVE `N`          TO variable4.

      * Demonstrate a numeric condition
       IF variable1 IS EQUAL TO 5 THEN
          DISPLAY `variable1 is equal to 5`
          MOVE `Y`       TO variable2
       END-IF.

      * Demonstrate an alphanumeric condition that
      * contains an ELSE and a segemented variable.
       IF variable2 IS EQUAL TO `N` THEN
          DISPLAY `variable2 is equal to "N" `
       ELSE
          DISPLAY `variable2 is not equal to N`
          IF variable3(5:4) IS EQUAL TO `ware` THEN
             DISPLAY `variable3(5:4) is equal to "ware" `
             MOVE `Y` TO variable4
          ELSE
             DISPLAY `variable3(5:4) is not equal to "ware" `
          END-IF
       END-IF.

      * Demonstrate a compound AND condition.
       IF variable2 IS EQUAL TO `Y` AND
          variable4 IS EQUAL TO `Y` AND
          variable3(1:4) IS EQUAL TO `desk` THEN
               DISPLAY variable2         &
                       variable4         &
                       variable3(1:4)
       END-IF.

      * Demonstrate a compound OR condition.
       IF variable2 = `Y` OR variable3(5:4) = `ware` THEN
          DISPLAY ` An example of an OR condition`
       END-IF.

      * Demonstrate an ALPHABETIC condition test.
       IF variable2 IS ALPHABETIC THEN
          DISPLAY `variable2 is alphabetic`
       END-IF.

      * Demonstrate a NUMERIC condition test.
       IF variable1 IS NUMERIC THEN
          DISPLAY `variable1 is numeric`
       END-IF.

      * Demonstrate an IS NOT NUMERIC condition test.
       IF variable2 IS NOT NUMERIC THEN
          DISPLAY `variable2 is NOT numeric`
       END-IF.

      * Demonstrate the usage of the ELSIF clause.
       DISPLAY `variable1: ` & variable1.
       IF variable1 = 1
          DISPLAY `variable1 = 1`
       ELSIF variable1 = 2
          DISPLAY `variable1 = 2`
       ELSIF variable1 = 3
          DISPLAY `variable1 = 3`
       ELSIF variable1 = 4
          DISPLAY `variable1 = 4`
       ELSIF variable1 = 5
          DISPLAY `variable1 = 5`
       ELSE
          DISPLAY `variable1 = ` & varible1
       END-IF.
