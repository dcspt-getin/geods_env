# Geospatial Data Science Environment

This repository contains a conda environment for geospatial data science, including Jupyter, GeoPandas, and PySAL.

Useful resources for understanding and managing conda environments:

- [Conda vs. Docker for managing Data Science Enviroment ](https://pythonspeed.com/articles/conda-vs-docker/)
- [Managing Conda Environments for Data Science](https://pythonspeed.com/articles/conda-dependency-management/)

## Requirements

Before you can use this environment, you need to have Anaconda or Miniconda installed on your system, along with `conda-lock`. If you don't already have one of these installed, follow the instructions in the links below to get started:

- [Anaconda Installation](https://docs.anaconda.com/anaconda/install/)

  **OR**

- [Miniconda Installation](https://docs.conda.io/en/latest/miniconda.html)

  **Conda-Lock** is necessary for Operating system transivity.

"""
conda install -c conda-forge conda-lock
"""

## Installation

After installing Anaconda or Miniconda, follow these instructions to set up the geospatial data science environment on your system.

### 1. Clone or download the repository

You can either clone this repository using Git or download the files as a ZIP archive.

#### Option 1: Clone the repository using Git (requires Git)

If you have Git installed, open your terminal and run:

"""
git clone https://github.com/dcspt-getin/geods_env.git
"""

#### Option 2: Download the repository as a ZIP archive

Click the "Code" button on the repository's GitHub page, and then click "Download ZIP." Extract the files to a location on your local machine.

### 2. Create and activate the conda environment

Follow the instructions below for your specific operating system:

1. Open your terminal.

   1.1. [WINDOWS ONLY] Look for the Anaconda/Conda terminal on windows start menu. **Regular terminal** will not work, unless specify the conda command on your path. Please refer to [Anaconda docs](https://docs.anaconda.com/anaconda/user-guide/tasks/integration/python-path/).

2. Change the directory to the location where you downloaded/cloned the repository.
3. Run the following command to create the environment:

"""
conda-lock install --name geods_env conda-lock.yml
"""

4. Activate the environment with:

"""
conda activate geods_env
"""

5. Launch Jupyter Notebook by running:

"""
jupyter notebook
"""

Now you can use the geospatial data science environment in your Jupyter Notebooks!
