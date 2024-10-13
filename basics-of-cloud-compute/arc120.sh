# Task-1: Create a Cloud Storage Bucket
gcloud compute instances create my-instance \
    --machine-type=e2-medium \
    --zone=$ZONE \
    --image-project=debian-cloud \
    --image-family=debian-11 \
    --boot-disk-size=10GB \
    --boot-disk-type=pd-balanced \
    --create-disk=size=100GB,type=pd-standard,mode=rw,device-name=additional-disk \
    --tags=http-server

# Task-2: Create & attach a persistent disk to a Compute Engine instance
gcloud compute disks create mydisk \
    --size=200GB \
    --zone=$ZONE

gcloud compute instances attach-disk my-instance \
    --disk=mydisk \
    --zone=$ZONE

sleep 15

# Task 3. Install a NGINX web server

# Enter SSH
sudo apt update
sudo apt install nginx -y
# Confirm NGINX is running
ps auwx | grep nginx
