mkdir -p temp

pushd temp
sudo apt-get update && sudo apt-get install apt-transport-http
curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -
source /etc/lsb-release
echo "deb https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

sudo apt-get install influxdb 
sudo apt-get install telegraf 
sudo apt-get install kapacitor 
sudo apt-get install chronograf 
sudo apt install influxdb-client

popd
