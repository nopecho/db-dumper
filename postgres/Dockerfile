FROM postgres:13-alpine

COPY . /work

WORKDIR /work

ENTRYPOINT [ "./migration.sh" ]