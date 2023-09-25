pipeline   //the task which we are achieving
{
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
        stage('test') {
            steps {
                sh 'mvn test'
            }
        }
    }
}
