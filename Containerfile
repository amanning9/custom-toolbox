FROM registry.fedoraproject.org/fedora-toolbox:36

# Essential
RUN sudo dnf install \
    vim-enhanced \
    nodejs \
    python \
    python-pip \
    -y
RUN sudo python -m pip install --upgrade pip

# Useful development things, linting, etc.
RUN sudo dnf install \
    yamllint \
    htop \
    rpm-build \
    poetry \
    python-flake8 \
    python-mypy \
    python-black \
    pylint \
    tox \
    -y
#RUN sudo python -m pip install --upgrade \
