@echo off & color 0A & title Calculator I guess & echo               0------------0 & echo               0 Calculator 0 & echo               0------------0 & set /p x=First Number: & set /p o=Operation: & set /p y=Next Number: & goto check
:Add
set /a r=%x%+%y% & goto back
:Sub
set /a r=%x%-%y% & goto back
:Mul
set /a r=%x%*%y% & goto back
:Div
set /a r=%x%/%y%
:back
set /a x=%r% & set /p o=Operation:
if %o% == 0 (echo Result: %r% & Pause>Nul & exit) else (set /p y=Next Number: & goto check)
:check
if %o% == 1 (goto Add) else (if %o% == 2 goto Sub) 
if %o% == 3 goto Mul else (if %o% == 4 goto Div)
