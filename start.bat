::
::   _____      _                            _____            _ _ _   _             
::  / ____|    (_)                          / ____|          | (_) | (_)            
:: | |     _ __ _ _ __ ___  ___  ___  _ __ | |     ___   __ _| |_| |_ _  ___  _ __  
:: | |    | '__| | '_ ` _ \/ __|/ _ \| '_ \| |    / _ \ / _` | | | __| |/ _ \| '_ \ 
:: | |____| |  | | | | | | \__ \ (_) | | | | |___| (_) | (_| | | | |_| | (_) | | | |
::  \_____|_|  |_|_| |_| |_|___/\___/|_| |_|\_____\___/ \__,_|_|_|\__|_|\___/|_| |_|
::                                                                                  
::                    We are always watching you.
::                       t.me/CrimsonCoalition  

:: Startuem ebat
@echo off
:start
::Server name
set serverName=CrimsonCoalition
::Server files location
set serverLocation="D:\SteamLibrary\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=2
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck "-BEpath=D:\SteamLibrary\steamapps\common\DayZServer\battleye" "-profiles=D:\SteamLibrary\steamapps\common\DayZServer\profiles" "-mod=@CF;@VPPAdminTools;@VanillaPlusPlusMap;@Double magazine;"
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 1
::Go back to the top and repeat the whole cycle again
goto start