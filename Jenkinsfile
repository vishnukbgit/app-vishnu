pipeline {
    agent any

    environment {
        GITHUB_CREDENTIALS = credentials('vishnukbgit')
        AWS_CREDENTIALS = credentials('awscredentials')
        
    }

    stages {
        stage('Build Docker Image') {
            steps {
                dir('new') {
                    script {
                        docker.withRegistry('https://012765396827.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:awscredentials') {
                            sh 'ls -l'
                            def app = docker.build("012765396827.dkr.ecr.us-east-1.amazonaws.com/vishnu-ecr-db:$params.TAG")

                            app.push()
                        }
                    }
                }

                stage('Deploying App to Kubernetes') {
                    steps {
                        script {
                            kubernetesDeploy(configs: 'postgres-deploy.yml', kubeconfigId: 'kubernetes')
                        }
                    }
                }
            }
        }
    }
}
