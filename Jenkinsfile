pipeline {
    agent any
	
	  tools
    {
       maven "maven"
    }
	

	stages {
		stage('Remove Unused docker image') {
			      steps{
				sh 'docker stop $(docker ps | grep ":8003" | awk '{print $1}')'
				sh 'docker rm $(docker ps | grep ":8003" | awk '{print $1}')'      


			      }
			    }
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
		   
             sh 'docker build -t samplewebapp:mod .'
	     sh 'docker tag samplewebapp mohanaarush/samplewebapp:mod'
		   
          }
        }
		
		
     
  stage('Publish image to Docker Hub') {
          
	  steps{
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
         sh  'docker push mohanaarush/samplewebapp:mod'
	}
        
                  
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
