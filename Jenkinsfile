pipeline {
    agent any
	
	  tools
    {
       maven "maven"
    }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/Aarushmohan/CI-CD-using-Docker.git'
             
          }
        }
 
	 stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
        

  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t samplewebapp .' 
                sh 'docker tag samplewebapp mohanaarush/samplewebapp:latest'
                sh 'docker tag samplewebapp mohanaarush/samplewebapp:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
          sh  'docker push mohanaarush/samplewebapp:latest'
         sh  'docker push mohanaarush/samplewebapp:$BUILD_NUMBER' 
        }
                  
          }
        }
	 
	 stage('remove containers')
	 {
		 steps
		 {
			 sh 'docker stop $(docker ps -aq)'
			 sh 'docker rm $(docker ps -aq)'
			 sh 'docker ps --filter status=running'
			 sh 'docker stop $(docker ps --filter status=running -q)'
			 sh 'docker rm $(docker ps --filter status=exited -q)'
			 sh 'docker container prune'
			 sh 'docker rmi $(docker images -q)'
		 }
	 }
			
	
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
                sh "docker run -d -p 8003:8080 mohanaarush/samplewebapp"
            }
        }
 }
}
