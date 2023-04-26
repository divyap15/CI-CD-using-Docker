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
              script {
          dockerImage = docker.build samplewebapp + ":$BUILD_NUMBER"
        }
               /* sh 'docker build -t samplewebapp .' 
                 sh 'docker tag samplewebapp mohanaarush/samplewebapp:latest'
                sh 'docker tag samplewebapp mohanaarush/samplewebapp:$BUILD_NUMBER'
               */
          }
        }
		
		
     
  stage('Publish image to Docker Hub') {
          
            steps {
		    script{
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
          dockerImage.push()
		dockerImage.tag()
	}
        }
                  
          }
        }
	/*stage('Remove Unused docker image') {
			      steps{
				sh "docker rmi $samplewebapp:$BUILD_NUMBER"
			      }
			    }
	 */
	 
	 
	
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
                sh "docker run -d -p 8003:8080 mohanaarush/samplewebapp"
            }
        }
	 
	
	 
	
 }
}
