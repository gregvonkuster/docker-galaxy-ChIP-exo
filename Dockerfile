# Galaxy - ChIP-exo flavor
#
# VERSION       0.1

FROM bgruening/galaxy-stable:dev

MAINTAINER Greg Von Kuster, ghv2@psu.edu

ENV GALAXY_CONFIG_BRAND Galaxy ChIP-exo
ENV GALAXY_CONFIG_ENABLE_BETA_TOOL_COMMAND_ISOLATION True

RUN add-tool-shed --url 'https://toolshed.g2.bx.psu.edu' --name 'Tool Shed'

RUN install-repository \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_anaconda_2_3_0" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_bedtools_2_22" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_bwa_0_7_12" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_libxml2_2_9_3" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_libxslt_1_1_28" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_meme_4_11_0" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_ncurses_5_9" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_samtools_0_1_19" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_samtools_1_2" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_zlib_1_2_8" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_zlib_1_2_8" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name bam_to_scidx --panel-section-id convert" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name bwa --panel-section-name NGS:_Mapping" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name sam_to_bam --panel-section-name NGS:_SAMTools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_bedcov --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_calmd --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_flagstat --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o peterjc --name samtools_idxstats --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_mpileup --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_reheader --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_rmdup --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_slice_bam --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_sort --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_split --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_stats --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtools_stats --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name genetrack --panel-section-name NGS:_Peak_Calling" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name cwpair2 --panel-section-id ngs:_peak_calling" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name repmatch_gff3 --panel-section-id ngs:_peak_calling" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name bedtools --panel-section-name BEDTools" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name meme_fimo --panel-section-name Motif_Tools" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name meme_meme --panel-section-id motif_tools"
