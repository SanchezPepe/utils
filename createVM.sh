# !/bin/sh

gcloud compute instances create dev-vm \
--project=jjsa-dev \
--zone=us-central1-a \
--machine-type=n1-standard-1 \
--preemptible \
--image=ubuntu-1804-bionic-v20200716 \
--image-project=ubuntu-os-cloud \
--boot-disk-size=10GB \
--boot-disk-type=pd-standard \
--boot-disk-device-name=dev-vm \
--metadata-from-file=startup-script=dev-machine.sh \
--network-tier=STANDARD \
--tags=http-server-8080 \
