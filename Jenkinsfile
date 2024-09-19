def label_name = param.AgentLabel
pipeline {
    agent{label  label_name}

    parameters {
       
        string(name: "agent", defaultValue: "worker", trim: true, description: "Sample string parameter")
        string(name: "RepoURL", defaultValue: "https://github.com/erickc80Learning/testingport.git", trim: true, description: "Sample string parameter")
        string(name: "branch", defaultValue: "dev", trim: true, description: "branch")
        string(name: "AgentLabel", defaultValue: "Built-InNode", trim: true, description: "Label to execute this job")
         
    }
    environment{
        WSPath="${Workspace}"
        BUILD_NUM_ENV= currentBuild.getNumber()
    }

   stages {

        stage('Update Build number') {

            steps{
                script{
                    currentBuild.displayName = "#"+BUILD_NUM_ENV+"-"+label_name
                }
            }
        } 

        stage('Clone repository') {
            steps{
            //dir('./project-app') {
                checkout scm
             //}
            }
        }
            
    }
   
}






/* 


node {
    def app

    parameters {
       
        string(name: "agent", defaultValue: "worker", trim: true, description: "Sample string parameter")
        string(name: "RepoURL", defaultValue: "https://github.com/erickc80Learning/testingport.git", trim: true, description: "Sample string parameter")
        string(name: "branch", defaultValue: "dev", trim: true, description: "branch")
        
    }

    stage('Clone repository') {
        
        dir('./project-app') {
            checkout scm
        }
    }

    stage('Build image') {
       
        dir('./project-app') {
            app = docker.build("portnode")
        }
    }

    stage('Test image') {
        
        app.inside {
            sh 'docker run -it privileged portnode 192.168.1.40 80'
        }
    }

    
}


*/




/*def label_name = params.AgentLabel*/
/* 
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
            
                steps{
                    checkout scm
  
                }
            }
       
            stage("Build") {
                steps{
                    echo "Current workspace is ${env.WORKSPACE}"
                    script {
                        def customImage = docker.build("portnode", " -f ${env.WORKSPACE}/ .") 
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
*/
