#!/bin/bash


cd  #home path

git remote add origin git@github.com:mahantheshmr/jenkins_linux_server.git

git add *
git config advice.addIgnoredFile false

timestamp(){
	   date +"%d.%m.%Y um %H:%M"
   	   }
git commit -am "Auto push jenkins Server linux Commit $(timestamp)"

git push -u origin master

