FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl jq

COPY urlpublish.sh /app/urlpublish.sh

RUN chmod +x /app/urlpublish.sh

WORKDIR /app

CMD ["./urlpublish.sh"]