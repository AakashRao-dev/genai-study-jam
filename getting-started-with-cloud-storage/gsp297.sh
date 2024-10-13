# Create a bucket
# Define an object retention policy
# Remove a retention policy

# gcloud auth list
# glcoud config list project 
# gcloud config set compute/region europe-west1

# Task 1 - Create a new bucket
# defining bucket variable and using projectID as bucket name
export BUCKET=$(gcloud config get-value project)
gsutil mb "gs://$BUCKET"




# Task 2 - Define a Retention Policy
gsutil retention set 10s "gs://$BUCKET"
# to verify
gsutil retention get "gs://$BUCKET"
# transaction record object
gsutil cp gs://spls/gsp297/dummy_transactions "gs://$BUCKET/"
# to check what's inside bucket currently
gsutil ls gs://$BUCKET


# Task 3 - Lock the Retention Policy
gsutil retention lock "gs://$BUCKET/"


# Task 4 - Set a temporary hold
gsutil retention temp set "gs://$BUCKET/dummy_transactions"
# release hold
gsutil retention temp release "gs://$BUCKET/dummy_transactions"


# Task 5 - Event-based holds
# allow to delay a Retention Policy from counting down until the hold is released
gsutil retention event-default set "gs://$BUCKET/"
gsutil cp gs://spls/gsp297/dummy_loan "gs://$BUCKET/"
# to verify
gsutil ls -L "gs://$BUCKET/dummy_loan"
# release
gsutil retention event release "gs://$BUCKET/dummy_loan"



# Task 6 - remove a retention policy
# empty a bucket
gsutil -m rm gs://qwiklabs-gcp-00-9ccb988392e9/dummy_loan
# delete the bucket
gsutil rb "gs://$BUCKET/"