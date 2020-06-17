rem cd E:\DEV_SRC\github\ion\scripts\windows
rem set GOPROXY=https://mirrors.aliyun.com/goproxy/
set GO111MODULE=on
set scripts=%cd%/../../ 
cd %scripts%a

md %GOPATH%\src\github.com\pion\ion

copy go.mod %GOPATH%\src\github.com\pion\ion
copy go.sum %GOPATH%\src\github.com\pion\ion
cd %GOPATH%\src\github.com\pion\ion
go mod download

cd %scripts%
XCOPY pkg %GOPATH%\src\github.com\pion\ion\pkg /e /q
XCOPY cmd %GOPATH%\src\github.com\pion\ion\cmd /e /q
cd %GOPATH%\src\github.com\pion\ion\cmd\avp
go build 

cd %GOPATH%\src\github.com\pion\ion\cmd\biz
go build 

cd %GOPATH%\src\github.com\pion\ion\cmd\islb
go build 

cd %GOPATH%\src\github.com\pion\ion\cmd\sfu
go build 



