export REGION="${ZONE%-*}"

# set zone & region
gcloud config set compute/zone $ZONE
gcloud config set compute/region $REGION

# create an instance with name gcelab
gcloud compute instances create gcelab --zone $ZONE --machine-type e2-standard-2

# create a peristant disk named mydisk
gcloud compute disks create mydisk --size=200GB \
--zone $ZONE

# attach disk to the instance
gcloud compute instances attach-disk gcelab --disk mydisk --zone $ZONE