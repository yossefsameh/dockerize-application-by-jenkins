pipeline {
    agent any
    stages {
        stage('build and push') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USR', passwordVariable: 'PASS')]) { 
                    sh """
                        
                        //docker build .  -t yossefsameh/my-app:$BUILD_NUMBER
                        docker build .  -t yossefsameh/my-app:11
                        docker login -u ${USR} -p ${PASS}
                        docker push yossefsameh/app-app:11
                        //echo ${BUILD_NUMBER} > ../bakehouse-build-num.txt
                        
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
                                // export BUILD_NUMBER=\$(cat ../bakehouse-build-num.txt)
                                // mv Deployment/deploy.yaml Deployment/deploy.yaml.tmp
                                // cat Deployment/deploy.yaml.tmp | envsubst > Deployment/deploy.yaml
                                // rm -f Deployment/deploy.yaml.tmp
                                kubectl apply -f Deployment
                        """   
                    }
                       
                }
            }        
        }                
    }
}