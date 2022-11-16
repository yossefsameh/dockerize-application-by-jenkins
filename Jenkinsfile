pipeline {
    agent any
    stages {
        stage('build and push') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USR', passwordVariable: 'PASS')]) { 
                    sh """
                        
                        docker build .  -t yossefsameh/my-app:$BUILD_NUMBER
                        docker login -u ${USR} -p ${PASS}
                        docker push yossefsameh/my-app:$BUILD_NUMBER
                        echo ${BUILD_NUMBER} > ../app-build-num.txt
                        
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
                         

                                export BUILD_NUMBER=\$(cat ../app-build-num.txt)
                                mv Deployment/app.yml Deployment/app.yml.tmp
                                cat Deployment/app.yml.tmp | envsubst > Deployment/app.yml
                                rm -f Deployment/deploy.yaml.tmp
                                kubectl apply -f Deployment
                        """   
                    }
                       
                }
            }        
        }                
    }
}