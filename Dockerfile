FROM rust:1.37

COPY . .

RUN cargo build

ENTRYPOINT [ "./entrypoint.sh" ]