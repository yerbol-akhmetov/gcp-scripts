GIT_REPO_URL="https://github.com/PyPSA/pypsa-eur.git"
ENV_FILE_PATH="./pypsa-eur/envs/environment.yaml"

# Update package lists
sudo apt-get update -y

sudo apt-get install wget -y

# Install Git
sudo apt-get install git -y

git clone $GIT_REPO_URL

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

bash miniconda.sh -b 

# use dynamic path to miniconda3
export PATH=/home/akshat/miniconda3/bin:$PATH

conda install -y mamba -n base -c conda-forge

# Cleanup downloaded files
rm miniconda.sh

# # Create the environment using Mamba and the environment file
mamba env create -f $ENV_FILE_PATH

mamba init 

# exit

# gcloud compute ssh "my-vm"

# conda activate pypsa-eur

# cd pypsa-eur

# snakemake -call results/test-elec/networks/elec_s_6_ec_lcopt_Co2L-24H.nc --configfile config/test/config.electricity.yaml
After experimenting with various approaches, I was successful in running the pypsa-eur tutorial using the following files:
- gcp-infra.sh for creating a custom VM
- vm-config.sh to set up the VM (planning to integrate Gurobi and web-GIS soon)
These files still require further refinement to ensure they are reusable by everyone. 
What do you all think? Are you on board with this approach?


