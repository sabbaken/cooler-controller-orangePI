#Installing dependency
git clone https://github.com/zhaolei/WiringOP.git -b h3 
cd WiringOP
chmod +x ./build
sudo ./build
cd ..
rm -R WiringOP


#move everything to my_scrypts folder
mkdir -p $HOME/my_scripts/
mkdir -p $HOME/my_scripts/cooler_controller/
cp cooler_controller.sh $HOME/my_scripts/cooler_controller/

#make script executable
sudo chmod +x $HOME/my_scripts/cooler_controller/cooler_controller.sh

#add service
echo "ExecStart="$HOME"/my_scripts/cooler_controller/cooler_controller.sh" >> cooler_controller.service
echo "
[Install]
WantedBy=multi-user.target" >> cooler_controller.service

sudo cp cooler_controller.service /etc/systemd/system/
sudo systemctl enable cooler_controller.service

#delete files
cd ..
rm -R cooler-controller-orangePI/

echo [DONE]
echo "Use [sudo systemctl status cooler_controller.service] to check service status"
echo "Script has been installed in " $HOME/my_scripts/cooler_controller
