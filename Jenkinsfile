pipeline {
    agent any
    environment { 
      dockerhub = credentials('dockerhub')
      }

    stages {
        stage('Build') {
            steps {
               sh 'docker build -t hadhemi . '
            }
        }
        stage('Login') {
            steps {
               sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
            }
        }
        stage('Tag') {
            steps {
               sh 'docker tag hadhemi hadhemidhifaoui/hadhemi'
            }
        }
          stage('Push') {
            steps {
               sh 'docker push hadhemidhifaoui/hadhemi'
            }
        }
    }}
