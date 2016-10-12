# ChIP-exo flavor
#
# VERSION       0.1

FROM quay.io/bgruening/galaxy:master

MAINTAINER Greg Von Kuster, ghv2@psu.edu

ENV GALAXY_CONFIG_BRAND="Galaxy ChIP-exo" \
    GALAXY_CONFIG_ENABLE_BETA_TOOL_COMMAND_ISOLATION=True \
    GALAXY_CONFIG_CONDA_AUTO_INSTALL=True \
    GALAXY_CONFIG_CONDA_AUTO_INIT=True

RUN add-tool-shed --url 'https://toolshed.g2.bx.psu.edu/' --name 'Main Tool Shed'

# Install imaging tools
ADD chipexo_tools.yml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs

# Import workflows
ADD import_workflows.py $GALAXY_ROOT/import_workflows.py
