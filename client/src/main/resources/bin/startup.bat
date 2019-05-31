@echo off
if "%1%" == "-install" (
    md C:\ProgramData\flyingsocks-cli
    md C:\ProgramData\flyingsocks-cli\log
    exit
)

echo "Run flyingsocks-client..."
if "%1%" == "-daemon" (
    start /b java -Xbootclasspath/a:../conf;../resources -jar ../lib/flyingsocks-cli-v1.0.jar
) else (
    java -Xbootclasspath/a:../conf;../resources -jar ../lib/flyingsocks-cli-v1.0.jar
)

echo "Complete"
pause