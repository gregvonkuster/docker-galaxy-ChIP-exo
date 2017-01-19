# Galaxy - ChIP-exo flavor
#
# VERSION       0.1

FROM quay.io/bgruening/galaxy:jmc_conda

MAINTAINER Greg Von Kuster, ghv2@psu.edu

ENV GALAXY_CONFIG_BRAND="Galaxy ChIP-exo"
ENV ENABLE_TTS_INSTALL=True

# Enable conda dependency resolution
ENV GALAXY_CONFIG_CONDA_AUTO_INSTALL=True \
    GALAXY_CONFIG_CONDA_AUTO_INIT=True

# Install ChIP-exo tools
ADD chipexo_tools.yml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs
