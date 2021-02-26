echo "ADDING ERLANG REPOSITORY\n\n"
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb && sudo rm erlang-solutions_2.0_all.deb

echo "UPDATING THE SYSTEM\n\n"
sudo apt-get update

echo "INSTALLING ERLANG\n\n"
sudo apt-get install esl-erlang

echo "INSTALLING ELIXIR"
sudo apt-get install elixir

echo "INSTALLING PHOENIX\n\n"
mix archive.install hex phx_new
