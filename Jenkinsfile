pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/mohitsainin/roles.git'
            }
        }
        stage('Install Ansible') {
            steps {
                sshagent(['ubuntu']) {
                    sh '''
                    ssh -o StrictHostKeyChecking=no ubuntu@52.91.151.213 '
                    sudo apt update &&
                    sudo apt install -y ansible'
                    '''
                }
            }
        }
        stage('Playbook Execution') {
            steps {
                sshagent(['ubuntu']) {
                    sh '''
                    ssh -o StrictHostKeyChecking=no ubuntu@52.91.151.213 '
                    ansible-playbook -i /home/ubuntu/roles/jenkins/tests/inventory /home/ubuntu/roles/jenkins/tests/test.yml'
                    '''
                }
            }
        }
    }
    post {
        failure {
            echo 'Build failed!'
        }
    }
}
