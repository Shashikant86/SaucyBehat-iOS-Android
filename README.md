How To run Behat on iOS and Andoid with SauceLabs
-------------------

*Clone this repo:


      $git clone git@github.com:Shashikant86/SaucyBehat-iOS-Android.git
      $cd SaucyBehat-iOS-Anroid


*Now install Behat, Mink, MinkExtension and their dependencies with composer:

      $curl http://getcomposer.org/installer | php
      $php composer.phar install
      
*Check you have got all the pakaged and files. It should look like this after downloading. 

      $ ls
      README.md  behat.yml	bin		build.xml	composer.json	composer.lock	composer.phar	features	vendor

*Download Selenium Server and launch server 

     $ java -jar selenium-server-standalone-2.24.0.jar


*Now to launch Behat, just run:

      $./bin/behat

Watch The Test running in the browser. By default test will run in the firefox. 


# Run tests with Apple and Android Sauce: 

You need to create account with SauceLabs https://saucelabs.com/signup 
Once registered you will have SAUCE-USERNAME and SAUCE-ACCESS-KEY. 

Web-Driver (selenium2) Tests: 

update behat.yml and webdriver profiles. 
Change "wd_host: SAUCE-USERNAME and SAUCE-ACCESS-KEY@ondemand.saucelabs.com/wd/hub" with your SAUCE-USERNAME and SAUCE-ACCESS-KEY. 

You can now run tests with iOS and Android with profiles we created in behat.yml. 



1. iPhone:
----------------

     $./bin/behat -p iPhone

You will see test running on SauceLabs iPhone Driver.  https://saucelabs.com/jobs  

2. iPad: 
----------------

    $./bin/behat -p iPad

You will see test running on SauceLabs iPhone Driver.  https://saucelabs.com/jobs  


3. Android: 
-----------------

    $./bin/behat -p Android

You will see test running on SauceLabs Android Driver.  https://saucelabs.com/jobs  

----------------


*Still Using SeleniumRC?

Selenium RC won't support iOS and Android drivers, still you can run your tests with different browsers and OS. 

update behat.yml and 'SeleniumRC' profile. 
"username":         "username",
"access-key":       "apikey", with your  SAUCE-USERNAME and SAUCE-ACCESS-KEY. 


And Run 

     $./bin/behat -p SeleniumRC

You will see test running on SauceLabs https://saucelabs.com/jobs  




