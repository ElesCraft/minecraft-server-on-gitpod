wget https://pan-1258885526.cos.ap-beijing.myqcloud.com/uploads/2021/01/07/u0CbXu8f_java8.zip -O java8.zip
unzip java8.zip
rm java8.zip
mv java-8-openjdk-amd64/ current/
rm -f /home/gitpod/.sdkman/candidates/java/current
mv current/ /home/gitpod/.sdkman/candidates/java/
unset JAVA_TOOL_OPTIONS
wget https://github.com/fatedier/frp/releases/download/v0.34.3/frp_0.34.3_linux_amd64.tar.gz -O frp.tar.gz
tar xf frp.tar.gz
rm frp.tar.gz
mv frp_0.34.3_linux_amd64/ frp/
rm -f frp/frpc.ini
mv frpc.ini frp/
echo 'nohup frp/frpc &' > start_frpc.sh
chmod a+x frp/start_frpc.sh
mkdir minecraft
cd minecraft
wget https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar
echo 'eula=true' > eula.txt
echo 'java -Xmx4G -jar server.jar nogui' > start.sh
chmod a+x start.sh
echo 'First modify frp/frpc.ini to setup frpc'
echo 'run start_frp.sh to start frp'
echo 'Then run start_minecraft.sh to run minecraft server'
