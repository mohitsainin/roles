pipeline {
    agent any

        environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/mohitsainin/roles.git'
            }
        }
        
        stage('Run Ansible Playbook') {
            steps {
                dir('/var/lib/jenkins/workspace/jenkins_Automation') {
                    sh 'pwd'
                sh 'ansible-playbook -i /home/ubuntu/roles/jenkins/tests/inventory /home/ubuntu/roles/jenkins/tests/test.yml'
                    
                }
            }
        }
    }
}
    post {
        success {
            echo 'Ansible playbook executed successfully.'
        }
        failure {
            echo 'Ansible playbook execution failed.'
        }
    }
}
