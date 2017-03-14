# Based on the minimal notebook
FROM jupyter/minimal-notebook

# Installing modules that will be used in the notebooks
RUN conda install --quiet --yes pandas
RUN conda install --quiet --yes numpy
RUN conda install --quiet --yes scikit-learn

COPY minimal-notebook.ipynb /home/$NB_USER/work
