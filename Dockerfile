FROM node:16-alpine

# Install CLI tools
RUN npm install -g pnpm@7.9.3
RUN wget https://github.com/channable/vaultenv/releases/download/v0.15.1/vaultenv-0.15.1-linux-musl -O vaultenv
RUN mv vaultenv /usr/local/bin/vaultenv
RUN chmod +x /usr/local/bin/vaultenv

ENTRYPOINT [ "docker-entrypoint.sh" ]
