pipeline{
    agent any
    stages{
        stage('copy artifact'){
            steps{

                sh 'cp  /var/lib/jenkins/workspace/mavenbuild/target/*.war . '
            }
        }
        stage('build image'){
            steps{
                sh 'docker build -t app . '
            }
        }
          stage('push image'){
                    steps{
                        sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/d3v4j0e2'
                         sh 'docker tag app public.ecr.aws/d3v4j0e2/chantiecr:latest'
                         sh 'docker push public.ecr.aws/d3v4j0e2/chantiecr:latest'
                  }

                }

       

    }
}