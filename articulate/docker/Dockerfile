# Use OpenJDK 8 alpine (smaller)
FROM openjdk:8-jre-alpine

# Set our working directory
WORKDIR /

# Update the repositories and then install java
# RUN apt-get update
# RUN apt-get install -y software-properties-common
# RUN add-apt-repository ppa:openjdk-r/ppa
# RUN apt-get update
# RUN apt-get install -y openjdk-8-jre

# Copy the application from its folder to our image
ADD ../target/articulate-0.0.3-SNAPSHOT.jar /articulate.jar

EXPOSE 8080

CMD java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -jar articulate.jar

