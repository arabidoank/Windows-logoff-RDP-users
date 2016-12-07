@echo off
for /F "tokens=1,2" %%A in ('"qwinsta | findstr rdpwd"') DO (
	echo Realizando logoff  de %%B 
	logoff /server:SERVIDORHP %%A
)
