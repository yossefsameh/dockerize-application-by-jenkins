## in the last repo we have finished deploying jenkins in private gke cluster
(https://github.com/yossefsameh/deploy-jenkins-by-private-gke-in-terrafirm/tree/master)

## hello world app deployment

  1- create docker file to install flask and other requirments in python base image
  
  
  2- create (.yml) file to create deployment with container with image which i created by dockerfile
  
  
  3- create kubernates loadbalancer service 
  

## get into jenkins web app 

  1- create secret file credentials in jenkins by (.json) key of gcp service account 
  
  
  2- vreate dockerhub credentials
  
  
  3- create pipeline with SCM (this repo)
  
## jenkins file

  1- build and push image to my dockerhub repo
  
  2- use service aaound credentials to be able to access cluster
  
  3- deploy app
  
## results

  1- the deployments in two different namespaces
  
![Screenshot 2022-11-16 051447](https://user-images.githubusercontent.com/43928828/202181460-2a74d0d6-0e02-4fdd-a486-ac909d2f08dd.png)
![Screenshot 2022-11-16 051507](https://user-images.githubusercontent.com/43928828/202181473-f5e5c40b-62cc-44d9-87a4-54139023ac29.png)
 
 
  2-
![Screenshot 2022-11-16![Screenshot 2022-11-16 051421](https://user-images.githubusercontent.com/43928828/202183069-d988d293-2e4c-4d00-a0af-188334a99cbd.png)
 051257](https://user-images.githubusercontent.com/43928828/202182992-63c356f3-afe6-4da3-8fbe-e345df9eb8d0.png)


  3-

![Screenshot 2022-11-16 051421](https://user-images.githubusercontent.com/43928828/202183357-b0631a6b-6ba7-43e0-8bae-be4c6dbc4802.png)

  
  
