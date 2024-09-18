node {

    def app

    parameters {
       
        string(name: "agent", defaultValue: "worker", trim: true, description: "Sample string parameter")
        string(name: "RepoURL", defaultValue: "https://github.com/erickc80Learning/testingport.git", trim: true, description: "Sample string parameter")
        string(name: "branch", defaultValue: "dev", trim: true, description: "branch")
        
    }

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        //app = docker.build("portnode", " -f ${env.WORKSPACE}/ .") 

        app = docker.build("portnode:${env.BUILD_ID}", "-f ${dockerfile} ./dockerfiles")

    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        
    }
}






/*def label_name = params.AgentLabel
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