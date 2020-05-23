FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
RUN mkdir -p /apphome/model_data

## Step 2:
# Copy source code to working directory
COPY app.py requirements.txt /apphome/
COPY model_data /apphome/model_data

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
		pip install -r /apphome/requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
WORKDIR /apphome/

CMD ["python3", "app.py"]

