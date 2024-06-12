echo "Установите пакеты: flatpak-builder 7z"
read -p "Продолжить..."

echo "---"
echo "Установка SDK..." 
echo "---"
flatpak install flathub org.freedesktop.Platform//23.08 org.freedesktop.Sdk//23.08
