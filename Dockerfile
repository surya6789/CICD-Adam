#jboss/wildfly
FROM adamtravis/wezvabaseimage
ADD samplewar/target/samplewar.war /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
CMD ["/opt/jboss/wildfly/bin/standalone.ssh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]


