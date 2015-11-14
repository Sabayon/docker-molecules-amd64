FROM sabayon/base-amd64

MAINTAINER mudler <mudler@sabayonlinux.org>

# Set locales to en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

RUN equo up && equo u 

RUN equo i dev-util/molecule

RUN git clone https://github.com/Sabayon/molecules.git /sabayon

# Set environment variables.
ENV HOME /sabayon

# Define working directory.
WORKDIR /sabayon

# Define default command.
ENTRYPOINT ["/usr/bin/molecule"]
