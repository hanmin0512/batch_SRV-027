@echo on

cls

setlocal

PUSHD %~DP0

TITLE SRV-027

echo. SRV-027 START
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo [SRV-027] "서비스 접근 IP 및 포트 제한 미비"                                                              >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo [_START_]                                                                                  >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo # 기준 : 방화벽 제품 또는 Windows 방화벽 기능을 사용하고 있을 경우 양호함     >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo # 현황                                                                                      >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo.                                                                                          >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo # 1.레지스트리 확인                                                                              >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
reg query "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "EnableFirewall" >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul

reg query "HKLM\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "EnableFirewall" >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo # 2."Windows (Defender) Firewall 서비스 동작 유무 체크"                                      >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
net start | find /I "firewall" >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul

echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul                                                                                      >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo [_END_]                                                                                    >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo SRV-027 END                                                                                >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo ######################################################################################     >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo [_RSTART_]                                                                                 >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
echo [_REND_]                                                                                    >> [RESULT]_%COMPUTERNAME%SRV-027.txt 2>nul
