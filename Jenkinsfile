


node
{
	def mavenHome = tool name:"maven-3.9.6"
	stage('git checkout')
	{
	git branch: 'development', url: 'https://github.com/joeldepuri/maven-webapplication-project-kkfunda.git'
	}
	stage('maven build')
	{
	  sh "${mavenHome}/bin/mvn clean package"
	}
	stage('sonarqube report stage')
	{
	  sh "${mavenHome}/bin/mvn sonar:sonar"
	}
	stage('deploy to nexus')
	{
	  sh "${mavenHome}/bin/mvn deploy"
	}
	 stage('Deploy to Tomcat') 
    {
      
      sh """

      curl -u kk:password \
--upload-file /var/lib/jenkins/workspace/jio-dev-scriptedway-pl/target/maven-web-application.war \
"http://3.134.245.149:8080/manager/text/deploy?path=/maven-web-application&update=true"
          
        """
    }


}
