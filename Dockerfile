FROM alpine:latest

# OCI Labels for GitHub Container Registry
LABEL org.opencontainers.image.title="latex-docker-slim"
LABEL org.opencontainers.image.description="A bare-minimum, lightweight Alpine Docker image for compiling LaTeX."
LABEL org.opencontainers.image.source="https://github.com/etycomputer/latex-docker-slim"
LABEL org.opencontainers.image.authors="Ehsan Tabatabaei Yazdi"
LABEL org.opencontainers.image.licenses="MIT"

# Install bash, perl, and specific TeX Live micro-packages
RUN apk add --no-cache \
    bash \
    perl \
    texlive \
    texmf-dist-latexextra \
    texmf-dist-fontsextra \
    texmf-dist-fontsrecommended \
    texmf-dist-pictures \
    texmf-dist-bibtexextra \
    texlive-binextra

WORKDIR /workdir