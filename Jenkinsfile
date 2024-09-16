pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/mohitsainin/roles.git'
            }
        }
        stage('Install Ansible') {
            steps {
                sh 'sudo apt update'
                sh 'sudo apt install -y ansible'
            }
        }
        stage('Run Ansible Playbook') {
            steps {
                sh 'ansible-playbook -i /home/ubuntu/roles/jenkins/tests/inventory /home/ubuntu/roles/jenkins/tests/test.yml'
            }
        }
    }

    post {
        always {
            echo 'Jenkins installation complete!'
        }
    }
}
