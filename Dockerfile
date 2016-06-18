FROM jboss/wildfly
COPY postgresql*jar /tmp/
COPY deploy_ds.sh /tmp/
COPY commands.cli /tmp/
RUN /bin/bash /tmp/deploy_ds.sh 
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
EXPOSE 9990
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
#CMD ["/bin/bash"]


