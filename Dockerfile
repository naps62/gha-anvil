FROM ghcr.io/foundry-rs/foundry

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
