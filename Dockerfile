# Use the big dotnet SDK image to build
FROM mcr.microsoft.com/dotnet/sdk as builder

# Install the latest version of PowerShell
RUN dotnet tool install -g PowerShell

# Discard all that builder stuff and just copy the required changed files from "builder" to the smaller 180MB dotnet base image
FROM mcr.microsoft.com/dotnet/runtime
COPY --from=builder /root/.dotnet/tools/ /bin

# run powershell
ENTRYPOINT pwsh