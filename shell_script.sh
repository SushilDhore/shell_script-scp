#!/bin/sh
# Author : Sushil Dhore 
# Script follows here:
cd /home/ubuntu/angular
echo "Building..."
ng build
echo "Build completed"
zip -r build.zip /home/ubuntu/angular/dist

scp -i "sushil.pem"  build.zip  ubuntu@IP_Server
rm build.zip ( From local )
echo "source deploy.sh"
echo "sudo rm -rf angular"
echo "sudo rm -rf dist"
echo "unzip build.zip"
echo "mv dist/angular/ ."
echo "rm build.zip"
ssh -i "sushill.pem" ubuntu@IP_Server