FROM openjdk:11

WORKDIR /usr/src/app

ENV HELLO="HELL"
ENV HELLO="HELLO" HELLO_WORLD=${HELLO}" WORLD"
ENV HELLO_MUNDO=${HELLO}" MUNDO"

COPY GetEnv.java .

RUN javac GetEnv.java

CMD ["java", "GetEnv"]
