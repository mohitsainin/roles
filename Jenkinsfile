pipeline {
    agent any

    environment {
        REMOTE_SSH_KEY_ID = 'ansible.pem'  // Replace with your Jenkins SSH credential ID
        REMOTE_HOST = '54.237.69.98'  // Replace with your EC2 instance IP
    }

    stages {
        stage('Clone Repository') {
        stage('Checkout Code') {
            steps {
                // Clone the GitHub repository
                git branch: 'main', url: 'https://github.com/mohitsainin/roles.git'
                git url: 'https://github.com/mohitsainin/roles.git', branch: 'main'
            }
        }

        stage('Playbook Execution') {
            steps {
                sshagent([env.REMOTE_SSH_KEY_ID]) {
                    // Run ansible-playbook on the remote EC2 instance
                    sh """
                    ssh -o StrictHostKeyChecking=no ubuntu@${env.REMOTE_HOST} '
                        ansible-playbook -i /home/ubuntu/roles/jenkins/tests/inventory /home/ubuntu/roles/jenkins/tests/test.yml
                    '
                    """
                sshagent(['ansible.pem']) {
                    // Your SSH command here
                    sh 'ssh ubuntu@52.91.151.213 "command"'
                }
            }
        }
    }

    post {
        success {
            echo 'Hurry !!! Your Jenkins Installation task complete successfully. Now you can use this !!!'
            echo 'Build succeeded!'
        }
        failure {
            echo 'Failed to install Jenkins.'
            echo 'Build failed!'
        }
    }
}
