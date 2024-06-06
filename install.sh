flatpak-builder --user --install --force-clean build-dir org.flatpak.Catangens.yml

echo "------------"
echo "Лаунчер Catangens установлен."
echo "Удачной игры!"
echo ""
echo "Запуск: flatpak run org.flatpak.Catangens --no-sandbox"
echo "(no-sandbox просто для обхода ошибки, приложение не имеет доступа к вашим файлам)"
echo "------------"
