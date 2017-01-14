# install-dotnet

## Windows
### 11/16/2016: 1.1 with SDK Preview 2.1 build 3177
```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "'Downloading .NET Core SDK';((New-Object System.Net.WebClient).DownloadFile('https://go.microsoft.com/fwlink/?LinkID=835014', '%TEMP%\install-dotnetcore-sdk.exe'));& '%TEMP%\install-dotnetcore-sdk.exe' /install /passive /norestart"
```

## Ubuntu
Script created from instructions at https://www.microsoft.com/net/core#linuxubuntu

```
curl -s https://raw.githubusercontent.com/mikeharder/install-dotnet/master/install-dotnet.sh | sudo sh
```
