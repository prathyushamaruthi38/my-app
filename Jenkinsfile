node{
      stage('SCM Checkout'){
       git 'https://github.com/cherukurisai451/my-app.git'
}
stage('Mvn package'){
    sh 'mvn clean package'
 }
stage('Build Docker Image'){
      sh 'docker build -t cherukurisai451/repo-1:3.0.0 .'
}
 stage('push docker image'){
        withCredentials([string(credentialsId: 'dockers', variable: 'dockerlogin')])  {
        sh "docker login -u cherukurisai451 -p ${dockerlogin}"
}
       sh 'docker push cherukurisai451/repo-1:3.0.0'
}  

    
    
    
   

}

