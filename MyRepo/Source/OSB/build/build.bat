@echo off
for %%A in (".\..") do  set dir4upworking=%%~nA
@echo Tag : %dir4upworking%

mvn clean install  -Dversion=%dir4upworking%