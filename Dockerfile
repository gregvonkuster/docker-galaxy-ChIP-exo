# Galaxy - ChIP-exo flavor
#
# VERSION       0.1

FROM quay.io/bgruening/galaxy:16.04

MAINTAINER Greg Von Kuster, ghv2@psu.edu

ENV GALAXY_CONFIG_BRAND Galaxy ChIP-exo
ENV GALAXY_CONFIG_ENABLE_BETA_TOOL_COMMAND_ISOLATION True

RUN add-tool-shed --url 'https://toolshed.g2.bx.psu.edu' --name 'Tool Shed'

RUN install-repository \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_anaconda_2_3_0" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_atlas_3_10" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_bamtools_2_3_0_2d7685d2ae" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_bedtools_2_22" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_bedtools_2_24" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_bwa_0_7_10_039ea20639" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_bwa_0_7_12" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_bx_python_0_7" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_cairo_1_12_14" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_fastqc_0_11_4" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_fatotwobit_35x1" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_fontconfig_2_11_1" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_freetype_2_5_2" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_freetype_2_5_2" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_gnu_coreutils_8_25" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_imagemagick_6_9_3" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_libpng_1_6_7" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_libpng_1_6_7" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_libxml2_2_9_1" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_libxml2_2_9_3" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_libxslt_1_1_28" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_meme_4_11_0" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_ncurses_5_9" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_numpy_1_7" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_perl_5_18" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_perl_xml_parser_expat_2_41" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_picard_1_136" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_pixman_0_32_4" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_r_3_0_3" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_r_3_1_2" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_readline_6_2" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_samtools_0_1_18" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name package_samtools_0_1_19" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_samtools_1_2" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_ucsc_tools_312" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name package_zlib_1_2_8" \
    "--url https://toolshed.g2.bx.psu.edu -o bgruening --name repeat_masker --panel-section-id filter" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name bam_to_scidx --panel-section-id convert" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name extract_genomic_dna --panel-section-id fetchSeq" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name fasta_nucleotide_color_plot --panel-section-id plots" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name paired_end_histogram --panel-section-id plots" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name resize_coordinate_window --panel-section-name Operate_on_Genomic_Intervals" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name fastqc --panel-section-name NGS:_QC_and_Manipulation" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name bwa --panel-section-name NGS:_Mapping" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name bamtools_filter --panel-section-name NGS:_BAMTools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name bam_to_sam --panel-section-name NGS:_SAMTools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name sam_to_bam --panel-section-id ngs:_samtools" \
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name samtool_filter2 --panel-section-id ngs:_samtools" \
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
    "--url https://toolshed.g2.bx.psu.edu -o devteam --name picard --panel-section-name NGS:_Picard" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name genetrack --panel-section-name NGS:_Peak_Calling" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name cwpair2 --panel-section-id ngs:_peak_calling" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name repmatch_gff3 --panel-section-id ngs:_peak_calling" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name bedtools --panel-section-name BEDTools" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name meme_fimo --panel-section-name Motif_Tools" \
    "--url https://toolshed.g2.bx.psu.edu -o iuc --name meme_meme --panel-section-id motif_tools"
