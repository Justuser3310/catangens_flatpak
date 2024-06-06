echo "---"
echo "Скачивание deb пакета..."
echo "---"
wget https://static.vitiacat.ru/catangens/catangens_launcher.deb -O catangens_launcher.deb

echo "---"
echo "Создаём папку для работы..."
echo "---"
mkdir build

echo "---"
echo "Распаковываем и достаём лаунчер..."
echo "---"
7z x catangens_launcher.deb
7z x data.tar.xz
tar -xvf data.tar
mv "opt/Catangens Launcher" build/

echo "---"
echo "Строим пакет..."
echo "---"
flatpak-builder build-dir --force-clean org.flatpak.Catangens.yml

echo "--------------"
echo "./install.sh"
echo "--------------"
