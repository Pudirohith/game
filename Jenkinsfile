pipeline {
   agent any
    tools {
	  jdk 'Java8'
      maven "Maven3.3.9"
   }
    stages
   {
   stage('git clone') {
         steps {
            // Get some code from a GitHub repository
            git 'https://github.com/Pudirohith/game.git'
        }  
      }
	stage ('Compile and Build') {
         steps {
           sh 'mvn clean install -U  -Dmaven.test.skip=true'
         }
	}
    stage ('Publishing Artifact') {
steps {
	nexusArtifactUploader artifacts: [[artifactId:'gameoflife1', classifier: '', file: '/var/lib/jenkins/workspace/pipeline/gameoflife-build/target/gameoflife-build-1.0-SNAPSHOT.jar', type:'jar', type: 'jar']], credentialsId: 'c950924c-c77c-456c-9547-6cbf070c4ebc', groupId: 'com.wakaleo.gameoflife', nexusUrl: '10.128.0.15:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'mixed', version: '4.0.0'
           archiveArtifacts '**/*.jar'
	}
     }
    stage('Docker Build') {
      agent any
      steps {
        sh '''
	docker build -t pudirohith/game:v1 /var/lib/jenkins/workspace/pipeline/
	docker tag pudirohith/game:v1 gcr.io/fluent-service-325915/game-of-life-1:v1
	'''
      }
    }
   }
}
