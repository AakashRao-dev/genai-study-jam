# Go to the API & Services and enable cloud storage json api

# Task-1: Create cloud Storage Buckets
gsutil mb gs://$DEVSHELL_PROJECT_ID

gsutil mb gs://$DEVSHELL_PROJECT_ID-2

# Task-2: Upload files to cloud storage bucket
# Add image links here from your github after uploading images
curl -LO #_image_link (eg. raw.github.....)
curl -LO #_image_link (eg. raw.github.....)
curl -LO #_image_link_copy (eg. raw.github.....)

# Task-4: Copy files between cloud storage buckets
gsutil cp demo-image1.png gs://$DEVSHELL_PROJECT_ID/demo-image1.png
gsutil cp demo-image2.png gs://$DEVSHELL_PROJECT_ID/demo-image2.png
gsutil cp demo-image1-copy.png gs://$DEVSHELL_PROJECT_ID-2/demo-image1-copy.png