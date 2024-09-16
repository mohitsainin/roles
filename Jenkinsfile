pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/mohitsainin/roles.git', branch: 'main'
            }
        }
        stage('Playbook Execution') {
            steps {
                sshagent(['ansible.pem']) {
                    // Your SSH command here
                    sh 'ssh ubuntu@52.91.151.213 "command"'
                }
            }
        }
    }
    post {
        success {
            echo 'Build succeeded!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
