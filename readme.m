pipeline {
	agent any
	tools {
    	maven 'Maven_Home'
	}
	stages {
    	stage("Checkout") {   
        	steps {               	 
            	git url: 'https://github.com/iamashok1410/calculator'          	 
           	 
        	}    
    	}
    	stage('Build') {
        	steps {
        	sh "mvn compile"  	 
        	}
    	}
   	 
    	stage("Unit test") {          	 
        	steps {  	 
            	sh "mvn test" 
                }        	     
       	}
	stage('Quality Assurance of my project') {
        	steps {
        	sh "mvn pmd:pmd"  	 
        	}
    	}
        stage('my package of my project') {
        	steps {
        	sh "mvn package"  	 
        	}
    	}

}
}

