# Sourcery won't run on `arm` so force the use of `amd64` for the base image.
FROM --platform=linux/amd64 mcr.microsoft.com/devcontainers/base:bookworm

# Install uv for everyone not just the current user.
RUN curl -LsSf https://astral.sh/uv/install.sh | sh \
 && cp /root/.local/bin/uv /usr/local/bin/uv

# Install LaTeX and free fonts.
RUN apt-get --quiet update \
 && apt-get install --assume-yes texlive-latex-extra texlive-extra-utils texlive-fonts-extra latexmk \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && wget -q https://www.tug.org/fonts/getnonfreefonts/install-getnonfreefonts \
 && sudo texlua ./install-getnonfreefonts \
 && getnonfreefonts --user --all

# Add some labels so it looks nice in Github packages.
LABEL org.opencontainers.image.source=https://github.com/joejcollins/rhapsody-angel
LABEL org.opencontainers.image.description="rhapsody-angel image."
