def label_name = params.AgentLabel
def app
pipeline {
    
    agent any

    parameters {
       
        string(name: "agent", defaultValue: "worker", trim: true, description: "Sample string parameter")
        string(name: "RepoURL", defaultValue: "https://github.com/erickc80Learning/testingport.git", trim: true, description: "Sample string parameter")
        string(name: "branch", defaultValue: "dev", trim: true, description: "branch")
        
    }
    
    
    stages {

        stage('Clone repository') {
                /* Let's make sure we have the repository cloned to our workspace */
                steps{
                    checkout scm
  
                }
            }
       
            stage("Build") {
                steps{
                    echo "Current workspace is ${env.WORKSPACE}"
                    script {
                        def customImage = docker.build("portnode", " -f Dockerfile ${env.WORKSPACE}/ .") 
                        customImage.push()
                    } 

                    
                }
            }
        
            stage("Test") {
                steps {
                    echo "test"
                   // script {
                      //  Dockershell = sh(script:'docker run -it --privileged nodeport 192.168.1.80 8080', returnStdout:true)
                    //}
                }
            }
        
        stage("Release") {
            steps {
                echo "Release stage."
            }
        }
    }
}