wget https://www.dropbox.com/s/st1tmemfvkmz4b6/openlogic-openjdk-17.0.6%2B10-linux-x64.zip?dl=1 -O openlogic-openjdk-17.0.6+10-linux-x64.zip
unzip openlogic-openjdk-17.0.6+10-linux-x64.zip
rm openlogic-openjdk-17.0.6+10-linux-x64.zip
mv openlogic-openjdk-17.0.6+10-linux-x64/ current/
rm -f /home/gitpod/.sdkman/candidates/java/current
mv current/ /home/gitpod/.sdkman/candidates/java/
unset JAVA_TOOL_OPTIONS
chmod +x /home/gitpod/.sdkman/candidates/java/current/bin/java
wget https://github.com/fatedier/frp/releases/download/v0.34.3/frp_0.34.3_linux_amd64.tar.gz -O frp.tar.gz
tar xf frp.tar.gz
rm frp.tar.gz
mv frp_0.34.3_linux_amd64/ frp/
rm -f frp/frpc.ini
chmod a+x frp/start_frpc.sh
mkdir minecraft
cd minecraft
wget https://api.papermc.io/v2/projects/paper/versions/1.19.4/builds/507/downloads/paper-1.19.4-507.jar -O  server.jar
echo 'eula=true' > eula.txt
echo 'java -Xmx11G -jar server.jar nogui' > start.sh
chmod a+x start.sh
echo 'First modify frpc.ini to setup frpc'
echo 'run start_frp.sh to start frp'
echo 'Then run start_minecraft.sh to run minecraft server'
