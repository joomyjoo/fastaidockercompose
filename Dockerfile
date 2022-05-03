FROM continuumio/miniconda3:latest
RUN conda install -y mamba -n base -c conda-forge
RUN mamba install -y -c fastchan fastai timm 
RUN pip install ipywidgets pydicom wandb jupyterlab
