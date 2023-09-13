// pipeline {
//   agent any
//   stages {
//     stage('Checkout') {
//       steps {
//         checkout scm
//       }
//     }

//     stage('Deploy to Minikube') {
//       steps {
//         script {
//           sh "kubectl --kubeconfig=${KUBECONFIG} apply -f deployment.yaml"
//           sh "kubectl --kubeconfig=${KUBECONFIG} apply -f service.yaml"
//         }

//       }
//     }

//   }
//   environment {
//     KUBECONFIG = 'C:\\Users\\vgpan\\.kube\\config'
//   }
//   post {
//     success {
//       echo 'Deployment successful!'
//     }

//     failure {
//       echo 'Deployment failed!'
//     }

//   }
// }


pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Deploy to Minikube') {
            steps {
                script {
                    // Use 'start' to run a command in the background
                    bat 'start kubectl --kubeconfig=C:\\Users\\vgpan\\.kube\\config apply -f deployment.yaml'
                    bat 'start kubectl --kubeconfig=C:\\Users\\vgpan\\.kube\\config apply -f service.yaml'
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
