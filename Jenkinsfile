pipeline {
    agent any

    environment {

        GITHUB_CREDENTIALS = credentials('vishnukbgit')
        AWS_CREDENTIALS = credentials('awscredentials')
    }
    
    stages {

        stage('Build Docker Image') {
            steps {
                 dir('student_reg_backend'){
                script {
                   
                    docker.withRegistry('https://012765396827.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:awscredentials') {

                    sh 'ls -l'
                    def app = docker.build("012765396827.dkr.ecr.us-east-1.amazonaws.com/vishnu-ecr-backend:$params.TAG")
                
                        app.push()

                    }
                    }
                }
            }

        }

    }
}
