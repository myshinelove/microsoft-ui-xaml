@ECHO OFF
SETLOCAL
set ERRORLEVEL=

echo %~dp0..\NugetWrapper.cmd install InternalWindowsSDK-part1 -Version 1.0.1 -Source https://pkgs.dev.azure.com/microsoft/WinUI/_packaging/WinUIInternalWindowsSDK/nuget/v3/index.json %~dp0..\..\packages
call %~dp0..\NugetWrapper.cmd install InternalWindowsSDK-part1 -Version 1.0.1 -Source https://pkgs.dev.azure.com/microsoft/WinUI/_packaging/WinUIInternalWindowsSDK/nuget/v3/index.json -OutputDirectory %~dp0..\..\packages

echo %~dp0..\NugetWrapper.cmd install InternalWindowsSDK-part2 -Version 1.0.1 -Source https://pkgs.dev.azure.com/microsoft/WinUI/_packaging/WinUIInternalWindowsSDK/nuget/v3/index.json %~dp0..\..\packages
call %~dp0..\NugetWrapper.cmd install InternalWindowsSDK-part2 -Version 1.0.1 -Source https://pkgs.dev.azure.com/microsoft/WinUI/_packaging/WinUIInternalWindowsSDK/nuget/v3/index.json -OutputDirectory %~dp0..\..\packages

:END
exit /B %ERRORLEVEL%