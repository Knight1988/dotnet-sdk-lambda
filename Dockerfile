# Base image
FROM mcr.microsoft.com/dotnet/sdk:8.0

# Install zip
RUN apt-get update && apt-get install -y python3-pip python3-venv zip

# Setup Python environment
RUN python3 -m venv /opt/venv

# Make sure we use the virtualenv
ENV PATH="/opt/venv/bin:$PATH"

# Install pip dependencies
RUN pip install --upgrade pip

# Install Node.js 18
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs

# Install Serverless Framework
RUN npm install -g serverless@3

# Install Amazon.Lambda.Tools
RUN dotnet tool install -g Amazon.Lambda.Tools

# Install EF Core CLI
RUN dotnet tool install --global dotnet-ef

# Export PATH environment variable
ENV PATH="$PATH:/root/.dotnet/tools"