

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

apt-get install -y golang > /dev/null
show_progress 33

apt-get install -y php > /dev/null
show_progress 66

apt-get install -y screen > /dev/null
show_progress 100

git clone https://github.com/MTplusWebSystem/CheckWeb > /dev/null
cd CheckWeb
chmod 777 Web
mv Web /bin
go run constructor.go
