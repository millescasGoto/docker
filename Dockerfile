# Images base we will use 
FROM ubuntu

# updating server 
RUN apt-get update && \
    apt-get install -y vim

# package to update the timezone
RUN apt-get install -y tzdata

# env variable we would like and command to setup 
ENV TZ=US/Central 
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# copy the script to the work directory
WORKDIR /user/local/app 
COPY demo_bash.sh /user/local/app/
RUN chmod 766 demo_bash.sh

# creating the log directory
RUN mkdir -p /user/local/app/logs 





