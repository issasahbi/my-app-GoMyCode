pipeline {
  agent any
    stages {
        stage('Pull') {
             steps{
                script{
                    checkout([$class: 'GitSCM', branches: [[name: '*/main']],
                        userRemoteConfigs: [[
                            credentialsId: '74a8627f-24b4-4a89-ba57-e9e97e7de2af',
                            url: 'https://github.com/issasahbi/my-app-GoMyCode']]])
                }
            }
        }
        stage('Install') {
             steps{
                script{
                    sh "npm install"
                }
            }
        }
        stage('Version') {
            steps{
                script{
                    sh "ng version"
                }
            }
        }
        stage ('code quality'){
            steps{
                sh 'ng lint'
            }
        }

        stage('Serve') {
            steps{
                script{
                    sh "ng build"
                }
            }
        }
    }
}