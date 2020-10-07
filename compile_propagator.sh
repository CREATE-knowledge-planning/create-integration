wget -O ~/orekit-data.zip https://gitlab.orekit.org/orekit/orekit-data/-/archive/master/orekit-data-master.zip
unzip ~/orekit-data.zip -d ~/
mv ~/orekit-data-master ~/orekit-data
cd orekit/orekit
mvn install
cd ../..
cd propagator
./gradlew jar
cd ..