FROM registry.fedoraproject.org/fedora-toolbox

RUN sudo dnf install \
    vim-enhanced \
    nodejs \
    python-pip \
    -y
RUN sudo python -m pip install --upgrade pip

# Add stuff below!

RUN sudo dnf install \
    yamllint \
    htop \
    -y

RUN sudo python -m pip install --upgrade \
    flake8 \
    mypy \
    pylint
