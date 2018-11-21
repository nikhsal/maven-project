pipeline {
    agent any

    triggers {
         pollSCM('* * * * *')
     }

stages{
        stage('Build'){
            steps {
                sh "mvn clean package"
                 app = docker.build("nik0904/dockerdevops")
            }
        }
        stage('Push'){
            steps {
                docker.withRegistry('https://hub.docker.com/r/nik0904/dockerdevops/','docker-hub-credentials')
                app.push("${env.BUILD_NUMBER}")
                app.push("latest")
            }
        }
    }
}
