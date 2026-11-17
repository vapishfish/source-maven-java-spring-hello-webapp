pipeline {
  agent {label 'jenkins-node'}
  stages {
    stage ('checkout') {
      steps {
        git branch: 'main',
        url: 'https://github.com/vapishfish/source-maven-java-spring-hello-webapp.git'
      }
    }
  }
  stage ('build') {
    steps {
      sh 'mvn clean package'
    }
  }
  stage ('deploy') {
    steps {
      deploy adapters: [tomcat9(credentialsId: 'tomcat-manager', url: 'http://192.168.153.102:8080')], contextPath: null, war: 'target/hello-world.war'
    }
  }
}
