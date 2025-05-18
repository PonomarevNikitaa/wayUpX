@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem
@rem SPDX-License-Identifier: Apache-2.0
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  wayUpX startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and WAY_UP_X_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH. 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME% 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\WayUpX.jar;%APP_HOME%\lib\kotlin-stdlib-2.1.10.jar;%APP_HOME%\lib\telegrambots-spring-boot-starter-5.3.0.jar;%APP_HOME%\lib\telegrambots-6.5.0.jar;%APP_HOME%\lib\logback-classic-1.4.11.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\telegrambots-meta-6.5.0.jar;%APP_HOME%\lib\jersey-media-json-jackson-2.35.jar;%APP_HOME%\lib\jackson-jaxrs-base-2.14.0.jar;%APP_HOME%\lib\jackson-databind-2.14.0.jar;%APP_HOME%\lib\jackson-core-2.14.0.jar;%APP_HOME%\lib\jackson-jaxrs-json-provider-2.14.0.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.14.0.jar;%APP_HOME%\lib\jackson-annotations-2.14.0.jar;%APP_HOME%\lib\jersey-hk2-2.35.jar;%APP_HOME%\lib\jersey-container-grizzly2-http-2.35.jar;%APP_HOME%\lib\jersey-server-2.35.jar;%APP_HOME%\lib\httpmime-4.5.13.jar;%APP_HOME%\lib\httpclient-4.5.13.jar;%APP_HOME%\lib\commons-io-2.11.0.jar;%APP_HOME%\lib\slf4j-api-2.0.7.jar;%APP_HOME%\lib\logback-core-1.4.11.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.4.5.jar;%APP_HOME%\lib\spring-boot-2.4.5.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.3.jar;%APP_HOME%\lib\jakarta.activation-api-1.2.2.jar;%APP_HOME%\lib\jersey-client-2.35.jar;%APP_HOME%\lib\jersey-common-2.35.jar;%APP_HOME%\lib\hk2-locator-2.6.1.jar;%APP_HOME%\lib\javassist-3.25.0-GA.jar;%APP_HOME%\lib\jersey-entity-filtering-2.35.jar;%APP_HOME%\lib\hk2-api-2.6.1.jar;%APP_HOME%\lib\hk2-utils-2.6.1.jar;%APP_HOME%\lib\jakarta.inject-2.6.1.jar;%APP_HOME%\lib\grizzly-http-server-2.4.4.jar;%APP_HOME%\lib\jakarta.ws.rs-api-2.1.6.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\jakarta.validation-api-2.0.2.jar;%APP_HOME%\lib\httpcore-4.4.13.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\spring-context-5.3.6.jar;%APP_HOME%\lib\spring-aop-5.3.6.jar;%APP_HOME%\lib\spring-beans-5.3.6.jar;%APP_HOME%\lib\spring-expression-5.3.6.jar;%APP_HOME%\lib\spring-core-5.3.6.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.3.jar;%APP_HOME%\lib\aopalliance-repackaged-2.6.1.jar;%APP_HOME%\lib\grizzly-http-2.4.4.jar;%APP_HOME%\lib\spring-jcl-5.3.6.jar;%APP_HOME%\lib\grizzly-framework-2.4.4.jar


@rem Execute wayUpX
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %WAY_UP_X_OPTS%  -classpath "%CLASSPATH%" org.example.MainKt %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable WAY_UP_X_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%WAY_UP_X_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
