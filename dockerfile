from nginx
RUN apt-get update && apt-get install nano net-tools -y
workdir hello
copy script1 .

