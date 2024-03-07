# Images base we will use 
FROM ubuntu

# updating server 
RUN apt-get upate \
    apt-get install -y vim

# package to schedule a task 
RUN apt-get install -y at \
    apt=get install cron

# package to update the timezone
RUN apt-get install -y tzdata

# env variable we would like and command to setup 
ENV TZ=US/Central 
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /user/local/app 
COPY demo_bash /user/local/app/





