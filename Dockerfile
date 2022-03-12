FROM mcr.microsoft.com/dotnet/sdk:3.1-alpine3.15

ENV PATH="/root/.dotnet/tools:${PATH}"

# install the latest version of fire.ly and check the version
RUN dotnet tool install --global Firely.Terminal --version 2.4.2
RUN fhir -v 
RUN curl https://simplifier.net/specialauthorizationdigitalinformationexchange2
RUN fhir login email=joel.pettis@Ontario.ca password=W7uPiUQsO2

CMD ["/root/.dotnet/tools/fhir"]
