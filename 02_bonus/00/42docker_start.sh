#echo "42docker_start='bash ~/42docker_start.sh'" >> ~/.zshrc
docker-machine create -d virtualbox Char
docker-machine restart Char
eval $(docker-machine env Char)
echo $'\t\t\e[38;5;46mDocker started\e[0m'
docker-machine stop Char
cp -R ~/.docker "/tmp/"$USER""_docker/""
echo $'\t\t\e[38;5;46mDocker removed\e[0m'
rm -rf ~/.docker
ln -s "/tmp/"$USER""_docker/"" ~/.docker
echo $'\t\t\e[38;5;46mDocker linked\e[0m'
docker-machine start Char
eval $(docker-machine env Char)
echo $'\t\t\e[38;5;46mDocker started one more time\e[0m'
