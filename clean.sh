# to Delete all

gcloud compute instance-groups managed delete my-group --zone=us-central1-a -q
gcloud compute instance-templates delete my-template -q
gcloud compute firewall-rules delete allow-ssh -q
echo "Deleted"
