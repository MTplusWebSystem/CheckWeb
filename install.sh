

echo -e "
░█████╗░██╗░░██╗███████╗░█████╗░██╗░░██╗
██╔══██╗██║░░██║██╔════╝██╔══██╗██║░██╔╝
██║░░╚═╝███████║█████╗░░██║░░╚═╝█████═╝░
██║░░██╗██╔══██║██╔══╝░░██║░░██╗██╔═██╗░
╚█████╔╝██║░░██║███████╗╚█████╔╝██║░╚██╗
░╚════╝░╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝

░██╗░░░░░░░██╗███████╗██████╗░
░██║░░██╗░░██║██╔════╝██╔══██╗
░╚██╗████╗██╔╝█████╗░░██████╦╝
░░████╔═████║░██╔══╝░░██╔══██╗
░░╚██╔╝░╚██╔╝░███████╗██████╦╝
░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░
"
sleep 2

apt install golang;
apt install php
apt install screen
git clone https://github.com/MTplusWebSystem/CheckWeb
cd CheckWeb
chmo 777 Web
mv Web /bin
go run constructor.go
