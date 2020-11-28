banner() {
	#printf "\033[1;93m"
	toilet -f font -F metal Random
	#toilet -f standard -f mono12 Zsh
	toilet -f font -F metal Theme
	}
	R-T() {
		cd ~
		if [ -e zshrc4 ];then
		rm -rf .zshrc zsh* Theme
		else
		sleep 3
		printf "\n\n\033[1;92m First install then uninstall\n\n"
		fi
		}
	pa() {
		cd ~
		if [ -e zshrc4 ];then
		random
		sleep 4
		printf "\n\n Successfully installed random theme\n\n"
		else
		sleep 2
		printf "\n\n\033[1;91m Not installed random theme !!! Try again!!\n\n"
		fi
		}
	theme() {
		cd ~
		if [ -e .zshrc ];then
		sleep 4
		printf "\n\n\033[91m Sorry  You cannot use random theme because you already install zsh theme!!!\n\n"
		exit
		else
		cd ~/Random-Theme/files
		sleep 1
		dpkg -i Random-Theme.deb
		
		printf "\n\033[1;96m Now setuping auto suggession and highlighting\n"
		cd ~/Theme > /dev/null 2>&1
		printf "\n\033[1;93m Cloning Auto Suggession\n\n"
		git clone https://github.com/zsh-users/zsh-autosuggestions
		printf "\n\033[1;93m Cloning Highlighting\n\n"
		git clone https://github.com/zsh-users/zsh-syntax-highlighting
		printf "\nCloning ohmyzsh\n\n"
		cd ~
		git clone https://github.com/ohmyzsh/ohmyzsh
		mv ohmyzsh .oh-my-zsh
		cd ~
		printf "\nCloning Powerlevel10k\n\n"
		git clone https://github.com/romkatv/powerlevel10k
		pa
		fi
		}
	menu() {
		#echo -e "\033[1;93m"
		cat b|toilet -F metal -f term
		printf "\033[0m\n\033[91m[\033[0m1\033[91m]\033[1;92m Install Random Zsh-Theme\n"
		printf "\033[91m[\033[0m2\033[91m]\033[1;92m Uninstall Random Zsh-Theme\n"
		printf "\033[91m[\033[0m3\033[91m]\033[1;92m Exit\n\n\n"
		echo -e -n "\033[93mRandom\033[0m@\033[1;92mTheme\033[1;96m-->>\033[0m "
		read b
		case $b in
		1)theme ;;
		2)R-T ;;
		3)exit ;;
		*)menu ;;
		esac
		}
		setup() {
			printf "\n \033[92m[+]\033[1;93m Installing requirements… \n\n"
			sleep 2
			printf "\033[93m[+]\033[1;94m Updating package..\n"
			apt update
			apt upgrade
			sleep 1
			printf "\033[94m[+]\033[1;95m Installing python\n"
			apt install python
			sleep 1
			printf "\033[95m[+]\033[1;96m Installing zsh\n"
			apt install zsh
			printf "\033[91m[+]\033[1;92m Installing toilet\n"
			
			apt install toilet
			sleep 1
			printf "\033[93m[+]\033[1;94m Installing figlet\n"
			
			apt install figlet
			sleep 1
			printf "\033[94m[+]\033[1;95m Checking problem\n"
			
			apt install --fix-broken
			cd $PREFIX
			echo "Setup complete" >> setup
			clear
			menu
			}
			menu2() {
				printf "\n\n\n\033[91m[\033[0m1\033[91m]\033[1;92m Install Requirements\n\n\n"
				printf "\033[1;93m Press 1 and Enter\n\n"
				read a
				case $a in
				1)setup ;;
				*)printf "\n\n\033[1;91m Kya type kr rhe ho!!\n\n" ;;
				esac
				}
			se() {
				cd $PREFIX
				if [ -e setup ];then
				menu
				else
				menu2
				fi
				}
				menu
		
		