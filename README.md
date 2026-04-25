# latex-docker-slim

[![Build Status](https://github.com/etycomputer/latex-docker-slim/actions/workflows/publish.yml/badge.svg)](https://github.com/etycomputer/latex-docker-slim/actions)
[![GitHub License](https://img.shields.io/github/license/etycomputer/latex-docker-slim)](https://github.com/etycomputer/latex-docker-slim/blob/main/LICENSE)
[![Docker Image Version (latest semver)](https://img.shields.io/github/v/tag/etycomputer/latex-docker-slim?label=version)](https://github.com/etycomputer/latex-docker-slim/packages)
[![Docker Image Size](https://img.shields.io/badge/image%20size-optimized-brightgreen)](#-image-size--compression)
[![OS](https://img.shields.io/badge/OS-Alpine_Linux-0073B7?logo=alpinelinux&logoColor=white)](https://alpinelinux.org/)

**latex-docker-slim** provides a bare-bones LaTeX compiling environment inside a highly optimized Alpine Linux Docker container. 

Designed for developers and researchers who need to build PDFs quickly, this image strips away the bloat of standard TeX Live distributions to keep storage footprints minimal and image pull times exceptionally fast. It is perfectly suited for automated document generation in fast CI/CD pipelines.

## 📦 What's Included

To keep the image lightweight, only the essential TeX Live packages and basic utilities are installed via Alpine's package manager (`apk`). 

**System Utilities:**
* `bash` & `perl`

**TeX Live Components:**
* `texlive` (Base compiler system)
* `texlive-binextra` (Additional TeX Live binaries)
* `texmf-dist-latexextra` (Essential macros and add-ons)
* `texmf-dist-fontsextra` & `texmf-dist-fontsrecommended` (Standard and extended fonts)
* `texmf-dist-pictures` (Graphics, TikZ, and drawing packages)
* `texmf-dist-bibtexextra` (Advanced bibliography support)

## 🚀 How to Use

To get started, pull the latest image directly from the GitHub Container Registry (no authentication required):

```bash
docker pull ghcr.io/etycomputer/latex-docker-slim:latest
```

## 💻 Locally Compiling LaTeX
To use this image to build your LaTeX documents locally, use the docker compose file provided in the repository and run the following command:

```bash
docker compose up
```

This will automatically spin up the container, compile the document using `latexmk` (which resolves all cross-references and bibliographies), output the resulting PDF, and cleanly exit.

## Example Project:
This repository includes a sample `example-cv.tex` and `publications.bib` file so you can test the compiler immediately. By default, the `docker-compose.yml` is configured to build `example-cv.tex`.

