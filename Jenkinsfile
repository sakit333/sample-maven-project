pipeline {
    agent any
    tools {
        maven 'maven'
    }
    
    stages {
        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('test'){
            steps {
                sh 'mvn test'
            }
        }
        stage('build') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
