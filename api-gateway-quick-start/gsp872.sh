# setup
gcloud auth list
gcloud config list project
gcloud config set compute/region "REGION"

# Task-1: Deploying an API Backend
# clone
git clone https://github.com/GoogleCloudPlatform/nodejs-docs-samples.git
# cd
cd nodejs-docs-samples/functions/helloworld/helloworldGet
# deployment
gcloud functions deploy helloGET --runtime nodejs20 --trigger-http --allow-unauthenticated --region us-central1



# Task-2: Test the API Backend
gcloud functions describe helloGET --region us-central1
# set project_id
export PROJECT_ID=qwiklabs-gcp-03-82abaa40818c



# Task-3: Creating a gateway
# dowload files using cloudshell
cloudshell download $HOME/openapi2-functions.yaml

# testing api deployment
# get gateway url
export GATEWAY_URL=$(gcloud api-gateway gateways describe hello-gateway --location us-central1 --format json | jq -r .defaultHostname)
echo $GATEWAY_URL

curl -s -w "\n" https://$GATEWAY_URL/hello
# returns hello world



# Task-4: Securing access by using an API Key
export API_KEY=AIzaSyDo-wdoTzsaRbZoE2gvV1Z4ax1C00mFCLI
# enable api key support
MANAGED_SERVICE=$(gcloud api-gateway apis list --format json | jq -r .[0].managedService | cut -d'/' -f6)
echo $MANAGED_SERVICE

gcloud services enable $MANAGED_SERVICE



# Task-5: Create and deploy a new API config to your existing gateway
# Done with GUI


# Task-6: Testing calls using your API key
export GATEWAY_URL=$(gcloud api-gateway gateways describe hello-gateway --location us-central1 --format json | jq -r .defaultHostname)
curl -sL $GATEWAY_URL/hello
# unauth

# with auth using api key
curl -sL -w "\n" $GATEWAY_URL/hello?key=$API_KEY