

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


function show_progress {
    local progress=$1
    local length=50
    local bar=$(printf "%-$((progress * length / 100))s" | tr ' ' '=')
    printf "\r[%-${length}s] %d%%" "$bar" "$progress"
}

apt install golang -y > /dev/null
show_progress 33

apt install php -y > /dev/null
show_progress 66

apt install screen -y > /dev/null
show_progress 100

git clone https://github.com/MTplusWebSystem/CheckWeb > /dev/null
cd CheckWeb
chmod 777 Web
mv Web /bin
go run constructor.go
