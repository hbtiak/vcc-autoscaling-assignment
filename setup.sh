#!/bin/bash
# My VCC assignment setup

echo "create template."
gcloud compute instance-templates create my-template \
    --machine-type=e2-micro \
    --image-family=debian-12 \
    --image-project=debian-cloud

echo "create instance group - auto-scaling."
gcloud compute instance-groups managed create my-group \
    --template=my-template \
    --size=1 \
    --zone=us-central1-a
    
gcloud compute instance-groups managed set-autoscaling my-group \
    --zone=us-central1-a \
    --min-num-replicas=1 \
    --max-num-replicas=3 \
    --target-cpu-utilization=0.6

echo "Firewall values."
gcloud compute firewall-rules create allow-ssh \
    --allow=tcp:22 \
    --source-ranges=49.36.191.194/32

echo "Its - Done"
