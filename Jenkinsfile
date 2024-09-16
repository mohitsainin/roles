pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository
                git branch: 'main', url: 'https://github.com/mohitsainin/roles.git'
            }
        }

        stage('Playbook Execution') {
            steps {
                // Set the PATH variable to include the location of ansible-playbook and execute the playbook
                withEnv(["PATH+AN=/home/ubuntu/roles/jenkins/task"]) {
                    sh "sudo ansible-playbook -i /home/ubuntu/roles/jenkins/tests/inventory /home/ubuntu/roles/jenkins/tests/test.yml"
                }
            }
        }
    }

    post {
        success {
            echo 'Hurry !!! Your Jenkins Installation task complete successfully. Now you can you use this !!!'
        }
        failure {
            echo 'Failed to install Jenkins.'
        }
    }
}
