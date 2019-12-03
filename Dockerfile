FROM dotnet:2.2
# This image provides a .NET Core 2.2 environment you can use to run your .NET
# applications.

# Switch to root for package installs
# USER 0

#RUN INSTALL_PKGS="rh-nodejs10-npm rh-nodejs10-nodejs-nodemon rh-dotnet22-dotnet-sdk-2.2 rsync" && \
#    yum install -y --setopt=tsflags=nodocs --disablerepo=\* \
#      --enablerepo=rhel-7-server-rpms,rhel-server-rhscl-7-rpms,rhel-7-server-dotnet-rpms \
#      $INSTALL_PKGS && \
#    rpm -V $INSTALL_PKGS && \
#    yum clean all -y && \
# yum cache files may still exist (and quite large in size)
#    rm -rf /var/cache/yum/*

RUN mkdir /opt/app-root/src/testdirectory


# Run container by default as user with id 1001 (default)
USER 1001

# Set the default CMD to print the usage of the language image.
CMD /usr/libexec/s2i/usage