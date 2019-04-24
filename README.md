
Project: Password less Authentication
School: Champion School
Student: Arya More

Overview:
The project purpose is develop the complete authentication process that will read data from secured trust store created in pysqlcipher on usb drive and create SHA512  code which will be compare with the SHA512 hashcode created by authentication service hosted service 

Passwordless Authentication contains two services:
1. Authentication Service
2. Gateway Service

Authentication Service is deployed on Heroku
Please follow following steps to create authentication service
1. Setup to connect with Heroku
   a. Download Python
   b. Download Git
   c. Download Heroku Client
   d. Add Heroku Postgres
   e. 
4. Create a folder
5. Unzip authenticationService.zip in a folder
6. Create a heroku instance 
    heroku create
7. git push heroku master
8. You can check if the service is running using heroku logs --tail

To understand more about "Python on Heroku" goto https://devcenter.heroku.com/articles/getting-started-with-python

Gateway Service is deployed on raspberry Pi
1. Install Python on raspberry pi
2. Instal SQLLite
3. Install PySQLCipher
4. Uncompress the gatewayservice.zip file
6. goto src folder - cd gatewayservice\gatewayservice\src
7. python startUSBGUI.py

