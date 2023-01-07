
FROM jenkins/jenkins:2.319.1

# skip the setup wizard
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false"
USER root

# install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --clean-download-directory --list --view-security-warnings -f /usr/share/jenkins/ref/plugins.txt
RUN apt-get update
RUN apt-get install -y python