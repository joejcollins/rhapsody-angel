FROM gitpod/workspace-full

USER gitpod

# Install LaTeX and Starship
RUN sudo apt-get -q update \
 && sudo apt-get install -yq texlive-latex-extra  \
 && curl -fsSL https://starship.rs/install.sh | bash -s -- --yes