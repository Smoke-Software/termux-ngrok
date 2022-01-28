#!/bin/dash
# Утилиту перевел: https://t.me/lamer112311 для https://t.me/smoke_software

# Оригинальный репозиторий: https://github.com/Marcel0Sousa/termux-ngrok
# Original repo: https://github.com/Marcel0Sousa/termux-ngrok

echo "Обновление репозитория"
apt update && upgrade -y
apt install -y wget
clear
echo
echo "████████╗ ██████╗██╗  ██╗███████╗██╗      ██████╗ ";
echo "╚══██╔══╝██╔════╝██║  ██║██╔════╝██║     ██╔═══██╗";
echo "   ██║   ██║     ███████║█████╗  ██║     ██║   ██║";
echo "   ██║   ██║     ██╔══██║██╔══╝  ██║     ██║   ██║";
echo "   ██║   ╚██████╗██║  ██║███████╗███████╗╚██████╔╝";
echo "   ╚═╝    ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ";
echo " /_/_/_/_[By @lamer112311 for @smoke_software]_/_/";
echo
echo "Установить Ngrok? [Y - да /n - нет]>> "
read opcao
case $opcao in
y)
echo
echo "Установка Termux-ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "(X) Неизвестная архитектура системы (X)"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo
echo "Пример команды (ngrok http 8080 \nИли ngrok для справки)"
;;

n)
clear
echo "ОШИБКА! Не удалось установить Ngrok"
echo
esac




