FROM centos8:latest AS builder
RUN echo "do great things" > hello

FROM centos8:latest
COPY --from=builder hello .
RUN cat hello
