pipeline {
    agent any

      stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/mohitsainin/roles.git'
            }
        }

        stage('Run Ansible Playbook') {
            steps {
                sh 'ansible-playbook -i /home/ubuntu/roles/jenkins/tests/inventory /home/ubuntu/roles/jenkins/tests/test.yml'
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
