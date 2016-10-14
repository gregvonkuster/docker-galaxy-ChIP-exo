# ChIP-exo flavor
#
# VERSION       0.1

FROM quay.io/bgruening/galaxy:master

MAINTAINER Greg Von Kuster, ghv2@psu.edu

ENV GALAXY_CONFIG_BRAND="ChIP-exo" \
    GALAXY_CONFIG_ENABLE_BETA_TOOL_COMMAND_ISOLATION=True

RUN add-tool-shed --url 'https://toolshed.g2.bx.psu.edu' --name 'Main Tool Shed'
RUN apt-get -qq update && apt-get install --no-install-recommends -y openjdk-7-jdk

# Install ChIP-exo tools
ADD chipexo_tools.yml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml
