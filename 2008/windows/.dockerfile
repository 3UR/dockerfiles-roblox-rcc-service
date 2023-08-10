FROM mcr.microsoft.com/windows:ltsc2019

ENV RCCServicePort=64989

WORKDIR "C:/Program Files (x86)/ROBLOX Corporation/RCCService"

COPY fmodex.dll .
COPY GLU32.DLL .
COPY OPENGL32.DLL .
COPY OSMESA32.DLL .
COPY RCCService.exe .

COPY Content "C:\ProgramData\ROBLOX\Content"

CMD ["powershell", "-Command", "Start-Process -FilePath 'RCCService.exe' -ArgumentList '-console', $env:RCCServicePort -RedirectStandardOutput output.log -Wait"]
