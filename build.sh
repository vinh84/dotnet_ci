docker build -t vinhhrv/dotnet_ci .
docker tag vinhhrv/dotnet_ci vinhhrv/dotnet_ci:latest
docker tag vinhhrv/dotnet_ci vinhhrv/dotnet_ci:$1
docker push vinhhrv/dotnet_ci:latest
docker push vinhhrv/dotnet_ci:$1
