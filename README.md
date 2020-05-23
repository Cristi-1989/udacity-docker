
## Project summary

I have covered all the required steps, adding or completing the following files:

* Makefile: for setup, install and lint the app.py application. I also had to add pylint to the requirements.txt file so that I could use it for linting
* Dockerfile: created an app folder and copied all files there, ran the pip install as another docker layer, exposed the 80 port and set the workdir to the app folder in order to run the app.py appication at startup
 - running the "make lint" linted the dockerfile with hadolint at 100%
* run_docker.sh: built the udacity_prediction_app image and ran it exposiing it on the host port 8000, to match the port from make_prediction.sh
* upload_docker.sh:  added to it to push the image to my dockerhub at crististoica/udacity:v1
* app.py: added info log line at line 66
* output-txt_files/docker_out.txt contains output of running the container with run_docker.sh and then in another terminal make_prediction.sh
* run_kubernetes.sh: crististoica/udacity:v1 image as a container exposing container port 80
  - I introduced a "sleep 1" in order to wait for the pod to be in "Running" state before forwarding to host port 8000
* output-txt_files/kubernetes_out.txt: added logs showing handling of connection on 8000 when running make_prediction.sh in different port
