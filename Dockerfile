FROM dotnet:2.2
# This image provides a .NET Core 2.2 environment you can use to run your .NET
# applications.

# Switch to root for package installs
USER 0

RUN mkdir /opt/app-root/src/testdirectory

# Run container by default as user with id 1001 (default)
USER 1001

# Set the default CMD to print the usage of the language image.
CMD /usr/libexec/s2i/usage
