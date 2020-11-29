FROM --platform=linux/386 ubuntu:latest

# Target Folders
ENV GE_DIRROOT /bolt
ENV GE_DIRTOOL /bolt/tools
ENV GE_DIRGAME /bolt/game
ENV GE_DIRCONFIG /bolt/config
ENV GE_BINROOT /usr/local/bin

# Igniter Files
ARG GE_IGNITERROOT=igniter-shell-go/bin/amd64/linux
ENV GE_IGNITERBIN igniter-shell
ENV GE_CONFIGFILE config/main.yaml

# Game Files
ARG GE_GAMESRCROOT=build
ENV GE_GAMEBIN game.x86

# Prepare folders
RUN mkdir ${GE_DIRROOT}
RUN mkdir -p ${GE_DIRTOOL}
RUN mkdir -p ${GE_DIRGAME}
RUN mkdir -p ${GE_DIRCONFIG}

# Setup Igniter Tool
COPY ${GE_IGNITERROOT}/${GE_IGNITERBIN} ${GE_BINROOT}
RUN chmod 777 ${GE_BINROOT}/${GE_IGNITERBIN}

# Copy configuration files
COPY ${GE_CONFIGFILE} ${GE_DIRCONFIG}

# Copy Game files
COPY ${GE_GAMESRCROOT} ${GE_DIRGAME}

# Setup entrypoint script
COPY docker-entrypoint.sh ${GE_BINROOT}
RUN chmod +x ${GE_BINROOT}/docker-entrypoint.sh
RUN ln -s ${GE_BINROOT}/docker-entrypoint.sh

# Setup executable
# ENTRYPOINT ["docker-entrypoint.sh"]