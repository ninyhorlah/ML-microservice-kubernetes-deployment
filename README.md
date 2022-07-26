CircleCI status badge
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/ninyhorlah/ML-microservice-kubernetes-deployment/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ninyhorlah/ML-microservice-kubernetes-deployment/tree/main)

## Project Overview

This project contains a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The data was initially taken from kaggle and you can read more about the data on [the data source site](https://www.kaggle.com/c/boston-housing).

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Files explanation in the repository

This repository contains the following:
* A file that lints the docker image 
* A Dockerfile to containerize this application
* A file that makes predictions 
* A file that contains kubernetes configuration
* A circleci directory with a config.yml file that automates the linting process