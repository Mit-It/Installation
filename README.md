# Installation
Installation files for our project

Installation manual: 

Step 1: Download the files from our repository 

Step2: Install Xamp with mysql if you haven’t already

Step3: Start Xamp and start mysql. If it is the first time you have to configure it first. Choose “root” as user and no password (otherwise you have to change the .env file and the bootstrag/cache/config.php and change username and password on each position)  

Step4: Start a database-management tool like HeidiSQL or MySQL workbench and open your local mysql 

Step 5: Create a new database named “test” (otherwise you have to change the files like in Step 3 mentioned), import the mix.sql and let it run on the “test”-database

Step6: Open your command line (cmd), navigate to the “Mix-It”-folder and type: “php artisan serve”

Step7: Now you can open your personal mix-it website on http://127.0.0.1:8000 , admin-email is: admin@mail.com and password is: supersecret

Step8: Enjoy your very own cocktail-website

