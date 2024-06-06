echo "Установите пакеты: flatpak-builder 7z"
read -p "Продолжить..."

echo "Установка SDK..." 
flatpak install flathub org.freedesktop.Platform//23.08 org.freedesktop.Sdk//23.08

echo "---------------"
echo "Чтобы завершить установку, нужно:"
echo "Построить пакет: ./build.sh"
echo "Установить пакет: ./install.sh"
echo "---------------"
