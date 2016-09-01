FROM ubuntu:latest
RUN 	apt-get update && \
	apt-get install nano && \
	apt-get install nginx -y && \
	export EDITOR=nano

# Add crontab file in the cron directory
#COPY ./data/ /data
COPY ./conf.d/ /etc/nginx/conf.d/

# Run the command on container startup
CMD service nginx start && /bin/bash
