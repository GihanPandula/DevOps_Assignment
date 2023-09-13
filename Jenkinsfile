pipeline {
    agent any
    
    environment {
        KUBECONFIG = 'C:\\Users\\vgpan\\.kube\\config'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Deploy to Minikube') {
            steps {
                script {
                    // Use 'start' to run a command in the background on Windows
                    bat 'start kubectl --kubeconfig=${KUBECONFIG} apply -f deployment.yaml'
                    bat 'start kubectl --kubeconfig=${KUBECONFIG} apply -f service.yaml'
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
