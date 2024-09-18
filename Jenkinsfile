pipeline {
    
    parameters {
       
        string(name: "agent", defaultValue: "ssbostan", trim: true, description: "Sample string parameter")
        string(name: "RepoURL", defaultValue: "ssbostan", trim: true, description: "Sample string parameter")
        
    }
    agent ${agent}
    stages {
        stage("Build") {
            steps {
                echo "Build stage."
                
            }
        }
        stage("Test") {
            steps {
                echo "Test stage."
            }
        }
        stage("Release") {
            steps {
                echo "Release stage."
            }
        }
    }
}