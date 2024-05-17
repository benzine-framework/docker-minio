FROM minio/minio
LABEL maintainer="Matthew Baggett <matthew@baggett.me>" \
      org.label-schema.vcs-url="https://github.com/benzine-framework/docker-minio" \
      org.opencontainers.image.source="https://github.com/benzine-framework/docker-minio"
HEALTHCHECK --interval=5s --timeout=3s --start-period=0s --retries=5 \
    CMD mc ping local -c 1 -q
CMD ["server", "--console-address", ":9001", "/data"]
