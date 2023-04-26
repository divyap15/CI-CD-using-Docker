pipeline {
    agent any
	
	  tools
    {
       maven "maven"
    }
	

	stages {
		stage('Remove Unused docker image') {
			      steps{
				      script{
					      if docker ps -a | grep "mohanaarush/samplewebapp*" | awk '{print $1}' | xargs docker rm -f; then 
					      printf 'cleared\n'
					      else
						      print 'error\n'
					      fi
				      }
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
