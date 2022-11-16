pipeline {
    agent any
    stages {
        stage('build and push') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USR', passwordVariable: 'PASS')]) { 
                    sh """
                        
                        docker build .  -t yossefsameh/my-app:13
                        docker login -u ${USR} -p ${PASS}
                        docker push yossefsameh/my-app:13
                        
                    """   
                    }
                    
              }     
            }
        }
        stage('deploy') {
            steps {

                script {    

                   
                    withCredentials([file(credentialsId: 'vmsa', variable: 'vmsa')]){

                        sh """ 
                                gcloud auth activate-service-account --key-file="$vmsa"
                                gcloud container clusters get-credentials my-private-cluster --zone asia-east1-a --project youssefs-project-367822
                         
                                kubectl apply -f Deployment
                        """   
                    }
                       
                }
            }        
        }                
    }
}