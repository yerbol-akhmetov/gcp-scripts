echo "creating  VM instance"

# Create a VM instance
gcloud compute instances create "my-vm" \
    --project="crucial-oven-386720" \
    --zone="europe-central2-a" \
    --machine-type="n2-highmem-8" \
    --image-family="debian-10" \
    --image-project="debian-cloud" \
    # --boot-disk-size = 50

# SSH into the VM instance
# gcloud compute ssh "my-vm" --zone "us-central1-a"

# cancel SSH
# exit

# this command is amazing - it copies the file from local to remote
gcloud compute scp ./vm-config.sh my-vm:./scripts --zone "europe-central2-a"

# SSH into the VM instance
gcloud compute ssh "my-vm" --zone "europe-central2-a"

# run the script
bash ./scripts/vm-config.sh