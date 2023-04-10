FROM continuumio/miniconda3:master

# Update and install basic tools
RUN apt update && apt install -y \
    build-base \
    gcc \
    git \
    libc-dev \
    libffi-dev \
    libstdc++ \
    linux-headers \
    make \
    tini

# Install Jupyter Notebook, geospatial libraries, and packages
RUN conda install -c conda-forge \
    jupyterlab \
    notebook \
    geopandas \
    pysal \
    fiona \
    shapely \
    rasterio \
    gdal \
    pyproj \
    rtree

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . /app

# Expose the Jupyter Notebook port
EXPOSE 8888

# Set the entrypoint
ENTRYPOINT ["tini", "--"]

# Set the default command to start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]