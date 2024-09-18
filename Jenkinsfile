pipeline {
    agent any

    parameters {
       
        string(name: "agent", defaultValue: "worker", trim: true, description: "Sample string parameter")
        string(name: "RepoURL", defaultValue: "https://github.com/erickc80Learning/testingport.git", trim: true, description: "Sample string parameter")
        string(name: "node", defaultValue: "worker", trim: true, description: "Node to execute")
        
    }
    
    
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