yslow-framework
===============

Yslow Framework is a service to analyse performance of a webpage. It uses yslow.js to generate report and we use
phantomjs to run yslow.js. Phantomjs is an headless browser to run javascript using console.

Assumptions with made while writing script:

Script is made with following assumptions:
1)Script is used inside IIIT network. Therefore, environment variables http_proxy and https_proxy are assigned
http://proxy.iiit.ac.in and https://proxy.iiit.ac.in respectively. Please comment out following lines if you
are not using any proxy else set proxy variables according to your network proxy.
export http_proxy="http://proxy.iiit.ac.in:8080"
echo "Your proxy $http_proxy"
export https_proxy="https://proxy.iiit.ac.in:8080"
echo "Your https proxy is $https_proxy"

2)Script should be run by user with root access.

3)Script is tested successfully on a container with ubuntu-12.04-custom-x86_64 ostemplate.


Sources of yslow-framework are available in following folders htdocs and autodeployment-script.
Folder autodeployment-scripts contains shell script named yslow-framewok-spec.sh. To run this script
use following command "sh yslow-framework-spec.sh" from inside shell environment. This script was
made for deploying yslow framework using OVPL on the container of openVZ. 


