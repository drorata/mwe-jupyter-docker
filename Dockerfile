# Based on the minimal notebook
FROM jupyter/minimal-notebook

# Installing modules that will be used in the notebooks
RUN conda install --quiet --yes pandas numpy matplotlib scikit-learn

COPY minimal-notebook.ipynb /home/$NB_USER/work
COPY generate-data.ipynb /home/$NB_USER/work
COPY data.csv /home/$NB_USER/work

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN conda clean -yt && rm -rf /opt/conda/pkgs/*
