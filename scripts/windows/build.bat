rem cd E:\DEV_SRC\github\ion\scripts\windows
rem set GOPROXY=https://mirrors.aliyun.com/goproxy/
set GO111MODULE=on
set IONROOT=%cd%\..\..\ 
set WINBIN=%cd%\bin
set BUILD=%GOPATH%\src\github.com\pion\ion
md %BUILD%
copy %IONROOT%\go.mod %BUILD% /y
copy %IONROOT%\go.sum %BUILD% /y
XCOPY %IONROOT%\pkg %BUILD%\pkg /s/y
XCOPY %IONROOT%\cmd %BUILD%\cmd /s/y

copy %IONROOT%\configs\avp.toml %WINBIN% /y
copy %IONROOT%\configs\biz.toml %WINBIN% /y
copy %IONROOT%\configs\islb.toml %WINBIN% /y
copy %IONROOT%\configs\sfu.toml.toml %WINBIN% /y

cd %BUILD%
go mod download
cd %BUILD%\cmd\avp
go build 
cd %BUILD%\cmd\biz
go build 
cd %BUILD%\cmd\islb
go build 
cd %BUILD%\cmd\sfu
go build 
cd %WINBIN% 
pause
