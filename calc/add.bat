goto start
:yes
set x=%z%
goto no

:start
echo Do you want to do another calculation using %z%?
set /p a=(y/n):
if &a%==y goto yes
if &a%==Y goto yes
if &a%==n goto no
if &a%==N goto no
goto start

:no
