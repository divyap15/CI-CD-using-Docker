pipeline {
    agent any
	
	  tools
    {
       maven "maven"
    }
	

	
	stages{
		stage('remove images')
		{
			steps{
				sh """
		  docker ps -a \
		    | awk '{ print \$1,\$2 }' \
		    | grep mohanaarush/samplewebapp* \
		    | awk '{print \$1 }' \
		    | xargs -I {} docker rm -f {}
			  """
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
		   /*script{
			   dockerImage=docker.build ("mohanaarush/samplewebapp:latest")
			   dockerImage.tag()*/
             sh 'docker build -t samplewebapp:latest .'
	     sh 'docker tag samplewebapp mohanaarush/samplewebapp:latest'
	   
          }
	   }
        
		
		
     
  stage('Publish image to Docker Hub') {
          
	  steps{
		  
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
         sh 'docker push mohanaarush/samplewebapp:latest'
	}
	
        
		  }
          }
        
/*		
    stage('push the artifacts to nexus')
	{
		steps{
		nexusArtifactUploader(
		            nexusVersion:"nexus3", 
                            protocol:"http", 
                            nexusUrl: "10.12.124.82:8081",
                            groupId: 'com.test',
                            version: '0.0.2-SNAPSHOT',
                            repository:'database',
                            credentialsId:'nexus' ,
                            artifacts: [
                                [artifactId:'Database' ,
                                classifier: '',
                                file: 'target/LoginWebApp-1.war',
                                type: 'war']
                            ]
			);
	}      
	}
	*/	
	stage('Push Docker Images to Nexus Registry'){
		steps{
			sh 'docker login -u admin --password-stdin admin123 http://10.12.124.82:8081'
			sh 'docker tag samplewebapp:latest http://10.12.124.82:9000/db'
			sh 'docker push http://10.12.124.82:9000/db'
			
			sh 'docker rmi $(docker images --filter=reference="NexusDockerRegistryUrl/ImageName*" -q)'
			sh 'docker logout http://10.12.124.82:8081/repository/last/'
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
