pipeline {
    agent any
    
    environment {
        KUBECONFIG = 'C:\\Users\\vgpan\\.kube\\config' // Provide the path to your kubeconfig file
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
                    // Assuming you have kubectl installed
                    sh "kubectl --kubeconfig=${KUBECONFIG} apply -f deployment.yaml"
                    sh "kubectl --kubeconfig=${KUBECONFIG} apply -f service.yaml"
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

