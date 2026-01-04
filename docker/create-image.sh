#!/bin/bash

gitRepoName=java-idp-jetty-base
gitRepoAddress=https://git.shibboleth.net/git/$gitRepoName
gitRepoBranch=12.1
imageName=ovekli/shibd-idp:1.0.0

git clone $gitRepoAddress
cd $gitRepoName
git checkout $gitRepoBranch
cd -

docker build -t $imageName --no-cache -f ./jetty-idp.dockerfile .

ls $gitRepoName && rm -rf $gitRepoName