# Task-1: Create a bucket

# prepare gshell
gcloud auth list
gcloud config list project
gcloud config set compute/region us-central1

gsutil mb gs://my-new-bucket




# Task-2: Upload an object into your bucket
curl https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Ada_Lovelace_portrait.jpg/800px-Ada_Lovelace_portrait.jpg --output ada.jpg

gsutil cp ada.jpg gs://aakash-bucket



# Task-3: Download an object from your bucket
gsutil cp -r gs://aakash-bucket/ada.jpg .
# that . represents no. of arguments if not passed gives an error:
# CommandException: Wrong number of arguments for "cp" command.


# Task-4: Copy an object to a folder in the bucket
gsutil cp gs://aakash-bucket/ada.jpg gs://aakash-bucket/image-folder/


# Task-5: List contents of a bucket or folder
gsutil ls gs://aakash-bucket

# Task-6: List details for an object
gsutil ls -l gs://aakash-bucket/ada.jpg

# Task-7: Make your object publicly accessible
gsutil acl ch -u AllUsers:R gs://aakash-bucket/ada.jpg

# Task-8: Remove public access
gsutil acl ch -d AllUsers gs://aakash-bucket/ada.jpg

# delete objects
gsutil rm gs://aakash-bucket/ada.jpg