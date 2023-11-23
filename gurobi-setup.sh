mkdir opt

cd opt

wget https://packages.gurobi.com/10.0/gurobi10.0.3_linux64.tar.gz

tar xvfz gurobi10.0.3_linux64.tar.gz

rm gurobi10.0.3_linux64.tar.gz

cd ..

nano ~/.bashrc

export GUROBI_HOME=/home/akshat/opt/gurobi1003/linux64
export PATH=$GUROBI_HOME/bin:$PATH

# copy and move gurobi.lic to /opt/gurobi1003/gurobi.lic

gurobi.sh