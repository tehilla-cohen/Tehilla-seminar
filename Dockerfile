FROM alpine:latest as build
RUN echo "this is build step"
COPY ./file /code/file
RUN echo "hello" > /code/file

FROM alpine:latest as test
RUN echo "this is test step"
COPY --from=build /code/file ./test/file
RUN ls -ltrh ./test/
RUN cat ./test/file
