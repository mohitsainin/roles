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
                sh 'ansible-playbook -i assignmet_0n_tool/tomcat/tests/inventory assignmet_0n_tool/tomcat/tests/test.yml'
            }
        }
    }

    post {
        always {
            echo 'Tomcat installation complete!'
        }
    }
}
