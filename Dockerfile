FROM continuumio/miniconda3:latest
RUN conda install -y mamba -n base -c conda-forge
RUN mamba install -y -c fastchan fastai
RUN pip install timm ipywidgets pydicom wandb jupyterlab
