pipeline {
  }
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/yourusername/my-devops-project.git'
      }
    }
    stage('Build Docker Image') {
      steps {
        dir('backend') {
          sh 'docker build -t myapp:latest .'
        }
      }
    }
    stage('Push to ECR') {
      steps {
        sh '''
        aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ECR_REPO
        docker tag myapp:latest $ECR_REPO:latest
        docker push $ECR_REPO:latest
        '''
      }
    }
    stage('Deploy to EKS') {
      steps {
        sh '''
        aws eks --region $AWS_REGION update-kubeconfig --name $CLUSTER_NAME
        kubectl apply -f k8s/
        '''
      }
    }
  }
}
