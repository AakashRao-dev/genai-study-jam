# MAIN TASKS
# Develop the backend system using a Cloud Function
# Deploy and manage an API exposing the backend service with a fully managed gateway
# Subscribe to messages published on a Pub/Sub topic to react to events

# Task-1: Create a gen2 Cloud Function
gcloud services enable apigateway.googleapis.com --project=$DEVSHELL_PROJECT_ID

gcloud functions deploy GCFunction --region=$REGION --runtime=nodejs20 --trigger-http --gen2 --allow-unauthenticated --entry-point=helloWorld --max-instances 5 --source=./

# here you need to be inside a folder on your local machine on cloud with 2 files configured - index.js & package.json

# exports.helloWorld = (req, res) => {
#   let message = req.query.message || req.body.message || 'Hello World!';
#   res.status(200).send(message);
# };

# {
#   "name": "sample-http",
#   "version": "0.0.1"
# }
# done!