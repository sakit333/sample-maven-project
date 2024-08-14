pipeline {
  agent any
  tools {
    maven 'maven'
  }
  stages {
    stage('clean') {
      steps {
         sh 'mvn clean'
      }
    }
    stage('package') {
      steps {
         sh 'mvn package'
      }
    }
    stage('Build image') {
      steps {
        script {
          sh 'docker build -t sakit333/webapp:latest .'
        //  sh 'docker run -it -d -p 8080:8080 sakit333/webapp:latest'
        }
      }
    }
    stage('Build and Push Docker Image') {
      steps {
        script {
          // Define your Docker Hub credentials here
          def dockerHubUsername = 'sakit333'
          def dockerHubPassword = 'Sak@528262'

          // Login to Docker Hub using the credentials
          sh "echo ${dockerHubPassword} | docker login -u ${dockerHubUsername} --password-stdin"

          // Push the Docker image
          sh 'docker push sakit333/webapp:latest'

          // Optional: Logout from Docker Hub
          sh 'docker logout'
        }
      }
    }
  }
}
