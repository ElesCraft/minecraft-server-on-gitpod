wget https://pan-1258885526.cos.ap-beijing.myqcloud.com/uploads/2021/01/07/u0CbXu8f_java8.zip -O java8.zip
unzip java8.zip
rm java8.zip
mv java-8-openjdk-amd64/ current/
rm -f /home/gitpod/.sdkman/candidates/java/current
mv current/ /home/gitpod/.sdkman/candidates/java/
unset JAVA_TOOL_OPTIONS
mkdir minecraft
cd minecraft
wget https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar
echo 'eula=true' > eula.txt
echo 'java -Xmx4G -jar server.jar nogui' > start.sh
chmod a+x start.sh
