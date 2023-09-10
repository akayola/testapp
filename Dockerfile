FROM centos
MAINTAINER akayola <akayola@gmail.com>

# Add repo file
ADD ./testapp.repo /etc/yum.repos.d/

# Install software
RUN yum --assumeyes update && \
yum --assumeyes install \
nmap iproute && \
bash && \
yum clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "172.17.0.0/24"] 
