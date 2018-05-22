#Tools used for API REST testing

1) Postman

	1.1) Install

		'''
		wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
		sudo tar -xzf postman.tar.gz -C /opt
		rm postman.tar.gz
		sudo ln -s /opt/Postman/Postman /usr/bin/postman
		'''

	1.2) Create an Unity desktop file for your launcher
		'''
		cat > ~/.local/share/applications/postman.desktop <<EOL
		[Desktop Entry]
		Encoding=UTF-8
		Name=Postman
		Exec=postman
		Icon=/opt/Postman/resources/app/assets/icon.png
		Terminal=false
		Type=Application
		Categories=Development;
		EOL
		'''


2) Install Postman BDD

	2.1) Create a GET request in Postman and point it to the following URL:
		http://bigstickcarpet.com/postman-bdd/dist/postman-bdd.min.js

	2.2) In the same request that you created in Step 1, go to the "Tests" tab and add the following script:

		// "install" Postman BDD
		postman.setGlobalVariable('postmanBDD', responseBody);


3) Newman (you must have Node and NPM installed)

	3.1) Install 

		'npm install -g newman'