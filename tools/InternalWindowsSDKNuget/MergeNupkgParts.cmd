@ECHO OFF
SETLOCAL
set ERRORLEVEL=

echo robocopy /E %~dp0..\..\packages\InternalWindowsSDK-part1.1.0.1\windowssdk-21296.1000.210119-1600-part1 %~dp0..\..\packages\InternalWindowsSDK.1.0.1
call robocopy /E %~dp0..\..\packages\InternalWindowsSDK-part1.1.0.1\windowssdk-21296.1000.210119-1600-part1 %~dp0..\..\packages\InternalWindowsSDK.1.0.1

echo robocopy /E %~dp0..\..\packages\InternalWindowsSDK-part2.1.0.1\windowssdk-21296.1000.210119-1600-part2 %~dp0..\..\packages\InternalWindowsSDK.1.0.1
call robocopy /E %~dp0..\..\packages\InternalWindowsSDK-part2.1.0.1\windowssdk-21296.1000.210119-1600-part2 %~dp0..\..\packages\InternalWindowsSDK.1.0.1

:END
exit /B %ERRORLEVEL%