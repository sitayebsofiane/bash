:restart
echo off
title bruno
cls
echo *******************************************
echo      Trouve le nombre 0-100
echo *******************************************
set /a Nba = %Random%  %%100
echo le nombre aleatiore est %Nba%

:question
set /p Nb= votre nombre ?
set /a nc= nc+1

if  %Nb% LSS %Nba% goto :pp
if  %Nb% GTR %Nba% goto :pg
if  %Nb% == %Nba% goto :win

:pp
echo c'est plus
goto :question

:pg
echo c'est moin
goto :question

:win
echo valeur de Nb %Nb% vous avez ganger
echo nombre de tentatives %nc%
pause
goto :restart
