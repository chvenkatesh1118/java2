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
       

    }
}