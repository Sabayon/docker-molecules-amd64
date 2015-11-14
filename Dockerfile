FROM sabayon/base-amd64

MAINTAINER mudler <mudler@sabayonlinux.org>

# Set locales to en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

RUN equo up && equo u 

RUN echo 3 | equo i dev-util/molecule dev-vcs/git app-misc/ca-certificates

RUN git clone https://github.com/Sabayon/molecules.git /sabayon

# Set environment variables.
ENV HOME /sabayon

# Define working directory.
WORKDIR /sabayon

# Define default command.
ENTRYPOINT ["/usr/bin/molecule"]
