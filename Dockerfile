FROM yanivomc/alpine-oraclejdk8:slim
WORKDIR /work
ENV DBHOST=mysql
ENV DBURL=mydb.com
COPY ./spring-music.jar ./code/spring-music.jar
WORKDIR /work/code
CMD java -jar -Dspring.profiles.active=none spring-music.jar
