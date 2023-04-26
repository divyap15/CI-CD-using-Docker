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
		   script{
             dockerImage = docker.build("mohanaarush/samplewebapp:${env.BUILD_NUMBER}")
	     dockerImage.tag()
		   }
          }
        }
		
		
     
  stage('Publish image to Docker Hub') {
          
            steps {
		    script{
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
         dockerImage.push("$BUILD_NUMBER")
          dockerImage.push('latest')
		dockerImage.tag("$BUILD_NUMBER")
          dockerImage.tag('latest')
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
