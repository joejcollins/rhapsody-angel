FROM gitpod/workspace-full

USER gitpod

# Install LaTeX, free fonts and Starship
RUN sudo apt-get -q update \
 && sudo apt-get install -yq texlive-latex-extra  \
 && wget -q https://www.tug.org/fonts/getnonfreefonts/install-getnonfreefonts \
 && sudo texlua ./install-getnonfreefonts \
 && getnonfreefonts --user --all
