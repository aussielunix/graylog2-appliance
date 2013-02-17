# Installing graylog2

# add aussielunix and 10gen PPAs

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv D77A4DCC

echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | sudo tee -a /etc/apt/sources.list.d/10gen.list
echo 'deb http://ppa.lunix.com.au/ubuntu/ precise main' | sudo tee -a /etc/apt/sources.list.d/aussielunix.list

sudo apt-get update
#sudo apt-get autoremove -y --purge ruby1.8
sudo apt-get install -yq ruby1.9.3
sudo update-alternatives --set ruby /usr/bin/ruby1.9.1
sudo update-alternatives --set gem /usr/bin/gem1.9.1
sudo gem install bundler


# install all of the things

sudo apt-get install -yq mongodb-10gen elasticsearch graylog2-server graylog2-web

# setup ES to be part of the graylog2 cluster

sudo sed -i -e 's/# cluster.name: elasticsearch/cluster.name: graylog2/' /etc/elasticsearch/elasticsearch.yml


# (re)start all of the server things

sudo /etc/init.d/elasticsearch restart
sudo restart mongodb
sudo restart graylog2-server

# Send some logs to graylog2-server

echo "*.* @localhost" | sudo tee -a /etc/rsyslog.d/30-all.conf
sudo /etc/init.d/rsyslog restart

# start up graylog2-web

sudo -i
su - graylog2-web
script/rails s -eproduction


# Profit

Browse to http://example.org:3000


curl -XGET 'http://localhost:9200/graylog2_recent/_search?pretty=true' -d '
{ 
    "query" : { 
        "matchAll" : {}  
    }   
}'



# check if there are any indexes at al

curl -XGET 'http://localhost:9350/_status?pretty=true'
