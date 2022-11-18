## in the last repo we have finished deploying jenkins in private gke cluster
(https://github.com/yossefsameh/deploy-jenkins-by-private-gke-in-terrafirm/tree/master)

## app deployment

  1- create docker file to install flask and other requirments in python base image
  
  
  2- create (.yml) file to create deployment with container with image which i created by dockerfile
  
  
  3- create kubernates loadbalancer service 
  
  
## jenkins file

  1- build and push image to my dockerhub repo
  
  2- use service accound credentials (with container.admin role) to be able to access cluster
  
  3- deploy app
  
## install get text-base
  exec to jenkins pod and install it to be able to use (envsubst) in jenkins file
![Screenshot 2022-11-16 171140](https://user-images.githubusercontent.com/43928828/202243105-2cd0ad7b-eea6-47d2-a904-9eeee7514fee.png)
## get into jenkins web app 

  1- create secret file credentials in jenkins by (.json) key of gcp service account 
  
  
  2- vreate dockerhub credentials
![Screenshot 2022-11-16 170317](https://user-images.githubusercontent.com/43928828/202241923-53d07f4e-6fb4-42a1-9706-29e9931b930d.png)


  
  3- create pipeline with SCM (this repo)
![Screenshot 2022-11-16 165521](https://user-images.githubusercontent.com/43928828/202243438-96028997-bbfc-4829-a8b6-19ff9456f608.png)
![Screenshot 2022-11-16 165637](https://user-images.githubusercontent.com/43928828/202242209-c9a9ebd8-96cd-41e1-8f91-3e8553a6c967.png)

## enable hook 

  1- go github repo settings and create webhook (http://url/github-webhook/)
![Screenshot 2022-11-16 181755](https://user-images.githubusercontent.com/43928828/202244443-d64f1cbf-6a11-4806-a692-15bee46f91c3.png)


 
  2- enable web hook trigger in jenkins pipeline



  3- apply pipeline then save it
  
  
  4- try to change something then push it to repo

![Screenshot 2022-11-16 181934](https://user-images.githubusercontent.com/43928828/202244928-c5f8ecf6-4f0e-4e05-a18d-1ac261f25383.png)



## results

  1- the deployments in two different namespaces (application wad deployed in namespace called ns2)
![Screenshot 2022-11-16 182145](https://user-images.githubusercontent.com/43928828/202245431-ee8f9b07-f6cf-4ed7-84a4-c479d7547815.png)

![Screenshot 2022-11-16 051507](https://user-images.githubusercontent.com/43928828/202181473-f5e5c40b-62cc-44d9-87a4-54139023ac29.png)
 
 
  2-
![Screenshot 2022-11-16![Screenshot 2022-11-16 051421](https://user-images.githubusercontent.com/43928828/202183069-d988d293-2e4c-4d00-a0af-188334a99cbd.png)
 051257](https://user-images.githubusercontent.com/43928828/202182992-63c356f3-afe6-4da3-8fbe-e345df9eb8d0.png)


  3-

![Screenshot 2022-11-16 051421](https://user-images.githubusercontent.com/43928828/202183357-b0631a6b-6ba7-43e0-8bae-be4c6dbc4802.png)

  
  
