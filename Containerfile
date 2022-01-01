FROM registry.fedoraproject.org/fedora-toolbox:35

# Essential
RUN sudo dnf install \
    vim-enhanced \
    nodejs \
    python-pip \
    -y
RUN sudo python -m pip install --upgrade pip

# Useful development things, linting, etc.
RUN sudo dnf install \
    yamllint \
    htop \
    -y
RUN sudo python -m pip install --upgrade \
    flake8 \
    mypy \
    pylint
