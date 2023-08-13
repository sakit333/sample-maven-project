pipeline   //the task which we are achieving
{
    agent any
    tools {
        maven 'maven'
  	}
    stages {
        stage('git clone') {
            steps {
               	git 'https://github.com/sakit333/sample-maven-project.git'
            }
        }
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
