pipeline {
    agent any
    
    tools {
         terraform 'terraform-adam'
    }
    
    stages {
        stage('Terraform init') {
            steps {
	            withCredentials([azureServicePrincipal('28927735-fb9c-482b-a7e2-715a6c814b72')]) {
                    sh 'terraform init -upgrade'
	           }
            }
        }
        stage('Terraform apply') {
            steps {
	            withCredentials([azureServicePrincipal('28927735-fb9c-482b-a7e2-715a6c814b72')]) {
	                sh 'terraform apply -auto-approve -var "client_id=$AZURE_CLIENT_ID" -var "client_secret=$AZURE_CLIENT_SECRET" -var "subscription_id=$AZURE_SUBSCRIPTION_ID" -var "tenant_id=$AZURE_TENANT_ID"'
		        }
            }
        }
    }
}
