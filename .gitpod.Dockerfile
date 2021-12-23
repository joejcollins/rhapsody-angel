FROM gitpod/workspace-full

USER gitpod

# Install LaTeX, free fonts, emerald font and Starship
RUN sudo apt-get -q update \
 && sudo apt-get install -yq texlive-latex-extra  \
 && wget -q https://www.tug.org/fonts/getnonfreefonts/install-getnonfreefonts \
 && sudo texlua ./install-getnonfreefonts \
 && getnonfreefonts --user --all \
 && mkdir -p `kpsewhich --var-value=TEXMFHOME` \
 && cd `kpsewhich --var-value=TEXMFHOME` \
 && wget http://mirror.ctan.org/fonts/emerald.zip \
 && unzip emerald.zip \
 && cp -r emerald/. . && rm -rf emerald/ \
 && rm emerald.zip \
#  && sudo updmap -sys --enable Map emerald.map \
#  && sudo texhash \
 && curl -fsSL https://starship.rs/install.sh | bash -s -- --yes
