pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
               sh 'docker build -t hadhemi . '
            }
        }
        stage('Login') {
            steps {
               sh 'docker login -u hadhemidhifaoui -p passwordh'
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
