pipeline {
    agent any
    stages {
        stage('build and push') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USR', passwordVariable: 'PASS')]) { 
                    sh """
                        
                        docker build .  -t yossefsameh/bakehouse-app:$BUILD_NUMBER
                        docker login -u ${USR} -p ${PASS}
                        docker push yossefsameh/bakehouse-app:$BUILD_NUMBER
                        //echo ${BUILD_NUMBER} > ../bakehouse-build-num.txt
                        
                    """   
                    }
                    
              }     
            }
        }
        stage('deploy') {
            steps {

                script {    

                   
                    withCredentials([file(credentialsId: 'kubectl', variable: 'vmsa')]){

                        sh """ 
                                gcloud auth activate-service-account --key-file="$vmsa"
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