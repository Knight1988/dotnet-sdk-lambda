# Base image
FROM mcr.microsoft.com/dotnet/sdk:6.0

# Install zip
RUN apt-get update && \
    apt-get install -y python3 python3-pip zip

# Install Node.js 16
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# Install Serverless Framework
RUN npm install -g serverless

# Install Amazon.Lambda.Tools
RUN dotnet tool install -g Amazon.Lambda.Tools

# Install EF Core CLI
RUN dotnet tool install --global dotnet-ef

# Export PATH environment variable
ENV PATH="$PATH:/root/.dotnet/tools"

