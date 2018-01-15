I assume you're trying to run 2 xampp versions togather with different PHP versions. like one with PHP 5.xx and one with PHP 7.xx.
By default on many linux distributions the default installation path of xampp is /opt/lampp.
So this script basically renames this directory according to our needs. Let's start..

1. Download and install a xampp version(if not already installed) from here: https://www.apachefriends.org/download.html
  sudo chmod +x xampp-linux-x64-5.x.xx-installer.run && sudo ./xampp-linux-x64-5.x.xx-installer.run
2. Rename /opt/lampp to /opt/lampp5 OR /opt/lampp7 according to the existing you just installed.
  sudo /opt/lampp/lampp stop && sudo mv /opt/lampp /opt/lampp5
3. Download and install the 2nd xampp version from the run file.
The only caution is before installing 2nd xampp version don't forget to rename /opt/lampp to /opt/lampp5 or /opt/lampp7 according to existing version.
Rest this script will take care of. Just run it..
4. sudo ./xampp.sh

Modify and use this according to your needs.
=========================================================Cheers!!===========================================================



