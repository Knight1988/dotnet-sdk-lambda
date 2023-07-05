# Base image
FROM mcr.microsoft.com/dotnet/sdk:6.0

# Install zip
RUN apt-get update && \
    apt-get install -y python3 python3-pip zip

# Install Amazon.Lambda.Tools
RUN dotnet tool install -g Amazon.Lambda.Tools

# Export PATH environment variable
ENV PATH="$PATH:/root/.dotnet/tools"
