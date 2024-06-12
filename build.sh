echo "---"
echo "Строим пакет..."
echo "---"
flatpak-builder build-dir --force-clean org.flatpak.Catangens.yml
