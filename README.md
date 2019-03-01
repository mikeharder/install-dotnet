# install-dotnet

## Windows
### 3/1/2019: 2.2.104
```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "'Downloading .NET Core SDK';((New-Object System.Net.WebClient).DownloadFile('https://download.visualstudio.microsoft.com/download/pr/cd02d3e6-ecc0-432d-a1bc-e8c9d3d8148c/f628e6721d33d13afe450abec8750f64/dotnet-sdk-2.2.104-win-x86.exe', '%TEMP%\dotnet-sdk-2.2.104-win-x86.exe'));& '%TEMP%\dotnet-sdk-2.2.104-win-x86.exe' /install /passive /norestart"
```

## Ubuntu
```
curl -s https://raw.githubusercontent.com/mikeharder/install-dotnet/master/install-dotnet.sh | sh
```
