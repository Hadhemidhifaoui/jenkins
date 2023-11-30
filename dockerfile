from nginx
RUN apt-get update && apt-get install nano net-tools
workdir hello
copy script1 .

