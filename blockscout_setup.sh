#!bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install libudev-dev zip unzip build-essential cmake -y


sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get install postgresql
sudo -u postgres psql
sudo adduser shivam 
su - shivam
create database blockscout;
Create user shivam with password 'Laravel';
ALTER DATABASE blockscout OWNER TO shivam;
sudo systemctl start postgresql
sudo apt-get install git \
                    automake \
                    libtool inotify-tools \
                    libgmp-dev \
                    libgmp10 \
                    build-essential \
                    cmake -y

sudo apt-get install erlang -y
if(elixir version doesm't upgrade to new){
    wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
    sudo apt-get update
    sudo apt-get install esl-erlang
    sudo apt-get install elixir
}

sudo apt-get install elixir -y
sudo apt-get install nodejs npm -y
sudo apt-get  install curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
git clone https://github.com/blockscout/blockscout.git
cd blockscout




mix deps.get
mix phx.gen.secret
if(mix deps.update explorer)
mix do local.rebar --force, deps.compile, compile 
cd apps/block_scout_web/assets; npm install && node_modules/webpack/bin/webpack.js --mode production; cd -
cd apps/explorer && npm install; cd -
mix phx.digest
cd apps/block_scout_web; mix phx.gen.cert blockscout blockscout.local; cd -

To clear Databse 
mix do ecto.drop;

Make .env file and paste this code there:
export SECRET_KEY_BASE=<generatedAboveSecret/PasteHere>
export ETHEREUM_JSONRPC_HTTP_URL=http://localhost:8545
export COIN=ETH
export SUBNETWORK=Mainnet
export NETWORK=Ethereum
export DATABASE_URL=postgresql://dbusername:dbpassword@localhost:5432/blockscout

