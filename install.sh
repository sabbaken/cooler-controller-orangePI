#Installing dependency
git clone https://github.com/zhaolei/WiringOP.git -b h3 
cd WiringOP
chmod +x ./build
sudo ./build
cd ..
rm -R WiringOP

#Move everything to my_scrypts folder
mkdir -p $HOME/my_scripts/
mkdir -p $HOME/my_scripts/cooler_controller/
cp cooler_controller.sh $HOME/my_scripts/cooler_controller/

#Make script executable
sudo chmod +x $HOME/my_scripts/cooler_controller/cooler_controller.sh

#Add home path to service
echo "ExecStart="$HOME"/my_scripts/cooler_controller/cooler_controller.sh" >> cooler_controller.service
echo "
[Install]
WantedBy=multi-user.target" >> cooler_controller.service

#Add service
sudo cp cooler_controller.service /etc/systemd/system/
sudo systemctl enable cooler_controller.service

#Delete files
cd ..
rm -R cooler-controller-orangePI/

#Enable service
sudo systemctl enable cooler_controller.service

echo "==============================[ DONE ]=============================="
echo "To check service status use"
echo "	sudo systemctl status cooler_controller.service"
echo "Script has been installed in "
echo "	cd $HOME/my_scripts/cooler_controller"
