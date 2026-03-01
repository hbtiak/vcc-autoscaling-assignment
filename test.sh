#my instance
gcloud compute instances list

# SSH in
gcloud compute ssh instance-group-1-xxxx --zone=us-central1-c

# in VM: test
sudo apt-get update
sudo apt-get install stress
stress --cpu 2 --timeout 600
