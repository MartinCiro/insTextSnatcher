sudo apt install valac meson libgee-0.8-dev libgtk-4-dev libsass-dev sassc libgranite-dev cmake gi-docgen qtbase5-dev libqt5x11extras5-dev qttools5-dev-tools python3 python3-pytest python3-dbus python3-dbusmock tesseract-ocr -y

#libhandy-1
git clone https://gitlab.gnome.org/GNOME/libhandy.git
cd libhandy
meson _build
cd _build
ninja
sudo ninja install

#libportal
pip install jinja2 typogrify packaging
git clone https://github.com/flatpak/libportal.git
cd libportal
meson _build
cd _build
sudo ninja install


git clone https://github.com/RajSolai/TextSnatcher.git TextSnatcher
cd TextSnatcher
meson build --prefix=/usr
cd build
sudo ninja install && com.github.rajsolai.textsnatcher

sudo mkdir /opt/TextSnatcher

echo "[Desktop Entry]
Type=Application
Name=TextSnatcher
GenericName=TextSnatcher
X-GNOME-FullName=TextSnatcher
Exec=com.github.rajsolai.textsnatcher %U
Icon=/opt/TextSnatcher/TextSnatcher.svg
Terminal=false
TryExec=com.github.rajsolai.textsnatcher
Categories=Qt;KDE;Utility;Calculator;X-KDE-Utilities-Desktop;" sudo > sudo /usr/share/applications/com.github.rajsolai.textsnatcher.desktop









