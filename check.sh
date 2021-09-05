#!/bin/bash 
curl --write-out %{http_code} --silent --output /dev/null http://192.168.97.200:3000 > commandResult
env.status = readFile('commandResult').trim()
sh "echo ${env.status}"
if (env.status == '200') {
    currentBuild.result = "SUCCESS"
}
else {
def folder=params.Folder
def version=params.Version
sh '''./rollback.sh "''' + host + '''" "''' + folder + '''" "''' + version +'''"'''
sh '''curl --write-out %{http_code} --silent --output /dev/null http://"''' + host + '''":80 > commandResult'''
env.status = readFile('commandResult').trim()
sh "echo ${env.status}"
if (env.status == '200') {
    currentBuild.result = "SUCCESS"
 }
 else {
currentBuild.result = "FAILURE"