ECHO ON
SETLOCAL
set ERRORLEVEL=

robocopy /s %BUILD_BINARIESDIRECTORY%\signed %XES_DFSDROP%\PostBuild

REM robocopy returns:
REM - 0x0 for no files copied,
REM - 0x1 for files copied, (https://support.microsoft.com/en-us/kb/954404)
REM - 0×2 for Some Extra files or directories were detected. Some housekeeping may be needed.
IF %ERRORLEVEL%==1 set ERRORLEVEL=0
IF %ERRORLEVEL%==3 set ERRORLEVEL=0

exit /B %ERRORLEVEL%