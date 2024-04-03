FROM ubuntu:22.04
COPY . ./
WORKDIR /giropops-senhas
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install --no-cache-dir -r requirements.txt
ENV REDIS_HOST=localhost
EXPOSE 5000
ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]
