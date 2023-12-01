pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                docker build -t hadhemi .
           
            }
        }
        stage('Login') {
            steps {
                docker login -u hadhemidhifaoui -p passwordh
            }
        }
        stage('Tag') {
            steps {
                docker tag hadhemi hadhemidhifaoui/hadhemi
            }
        }
          stage('Push') {
            steps {
                docker push hadhemidhifaoui/hadhemi
            }
        }
    }
}
