cls
@ECHO OFF
CLS
color 0a
echo ʹ��˵�����£�
echo 1���Թ���Ա������д˳���
echo 2���������Ҫ������Ĭ�����أ������㽫�����ġ�Ĭ������. . .�����ߡ�Default Gateway. . .��������172��202��ͷ�����־����ˡ�
echo 3������������ٵ�½����

pause
echo =======================================================================
ipconfig 
echo =======================================================================                
echo ������������ʾ�����У԰������IP
set /p gateway=
echo �������У԰������IP�� %gateway%
pause
route delete 202.202.32.0 mask 255.255.240.0 
route delete 172.0.0.0 mask 255.192.0.0 
route delete 172.16.0.0 mask 255.240.0.0 
route delete 172.16.0.0 mask 255.224.0.0 
route delete 172.32.0.0 mask 255.254.0.0 
route delete 211.83.208.0 mask 255.255.240.0 
route delete 222.177.140.0 mask 255.255.255.128 
route delete 219.153.62.64 mask 255.255.255.192 
route delete 10.10.10.0 mask 255.255.255.0 
route delete 192.168.0.0 mask 255.255.0.0
route add -p 202.202.32.0 mask 255.255.240.0 %gateway%
route add -p 172.16.0.0 mask 255.224.0.0 %gateway%
route add -p 172.32.0.0 mask 255.254.0.0 %gateway%
route add -p 211.83.208.0 mask 255.255.240.0 %gateway%
route add -p 222.177.140.0 mask 255.255.255.128 %gateway%
route add -p 219.153.62.64 mask 255.255.255.192 %gateway%
route add -p 10.10.10.0 mask 255.255.255.0 %gateway%
route add -p 192.168.0.0 mask 255.255.0.0 %gateway%

echo ·�������ϣ�������Ӧ�ÿ�����У԰����
pause