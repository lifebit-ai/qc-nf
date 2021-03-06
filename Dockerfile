FROM nfcore/base

LABEL authors="phil@lifebit.ai" \
      description="Docker image containing fastqc & multiqc for JAX workshop"

RUN conda config --add channels defaults
RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda

RUN conda install -c bioconda fastqc=0.11.8 && \
    conda install -c bioconda multiqc=1.7