pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps { 
                // Compilador
                sh 'mvn clean package' 
            } 
        }
        stage('Test') { 
            steps { 
                // Pruebas unitarias
                sh 'mvn test' 
            } 
        }
        stage('Deploy') { 
            steps { 
                // Build img Docker y la ejecuta localmente
                sh 'docker build -t myapp .' 
                sh 'docker run -d -p 9090:9090 myapp' 
            } 
        }
    }
}
