pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'node-js'
        DOCKERFILE_PATH = './Dockerfile'
        DOCKER_CONTAINER = 'Nodejsapp'
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/ashiksah95/NodejsAPP.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} -f ${DOCKERFILE_PATH} ."
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker stop ${DOCKER_IMAGE} || true
                docker rm ${DOCKER_IMAGE} || true
                docker run -d -p 80:3005 --name ${DOCKER_CONTAINER} ${DOCKER_IMAGE}
                '''
            }
        }
    }
}
