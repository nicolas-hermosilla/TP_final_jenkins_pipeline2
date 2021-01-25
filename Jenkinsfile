properties([pipelineTriggers([githubPush()])])

pipeline {

    agent { dockerfile true }
    options {
	withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'AWS_Creds', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']])
    
    }
    
    environment {
	AWS_REGION = "eu-west-3"
    }
    stages {
	stage('Ansible Launch') {
	    steps {
		sh 'ansible-playbook -i inventory playbook.yml --key-file "/home/ubuntu/.ssh/id_rsa"'   
	    }
	}
    }
}
