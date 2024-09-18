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
                    git checkout ${branch}
                }
            }

        stage("Build") {
            steps {
                app= docker.build("./Dockerfile")
                
            }
        }
        stage("Test") {
            steps {
                app.inside {
                    sh 'docker run -it --privileged nodeport 192.168.1.80 8080'
                }
            }
        }
        stage("Release") {
            steps {
                echo "Release stage."
            }
        }
    }
}