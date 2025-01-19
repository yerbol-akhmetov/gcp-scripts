# create opt directory in your /home
mkdir opt

cd opt

wget https://packages.gurobi.com/10.0/gurobi10.0.3_linux64.tar.gz

tar xvfz gurobi10.0.3_linux64.tar.gz

rm gurobi10.0.3_linux64.tar.gz

cd ..

nano ~/.bashrc

# add these lines to .bashrc
export GUROBI_HOME=/home/yerbol/opt/gurobi1003/linux64
export PATH=$GUROBI_HOME/bin:$PATH
export GRB_LICENSE_FILE="/home/yerbol/opt/gurobi1003/gurobi.lic"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"

# copy and move gurobi.lic to /home/yerbol/opt/gurobi1003/gurobi.lic

gurobi.sh
