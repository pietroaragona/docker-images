FROM jenkins/jenkins:lts-jdk11
LABEL org.opencontainers.image.authors="Pietro Aragona"

# https://github.com/jenkinsci/docker#preinstalling-plugins
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state

