# Task 1 - Create a bucket with Nearline Storage class
gsutil mb -c nearline -l us-west1 gs://qwiklabs-gcp-00-e197b8ccacdd9wic-bucket


# Task 2 - Update the file content of Cloud storage object
# 1. copy into local machine
gsutil cp gs://qwiklabs-gcp-00-e197b8ccacdd-9wic-gcs-bucket/sample.txt .
# 2. Add changes
vim sample.txt
# 3. push changes
gsutil cp sample.txt gs://qwiklabs-gcp-00-e197b8ccacdd-9wic-gcs-bucket/sample.txt
# verify
gsutil cat gs://qwiklabs-gcp-00-e197b8ccacdd-9wic-gcs-bucket/sample.txt

# Task 3 - Change the storage class of bucket to Archive type
gsutil defstorageclass set ARCHIVE gs://$BUCKET_3