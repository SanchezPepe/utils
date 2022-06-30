# Create VM
gcloud compute instances create dev-vm \
--project=jjsa-dev \
--zone=us-central1-a \
--machine-type=n1-standard-1 \
--image=ubuntu-minimal-2004-focal-v20220622 \
--image-project=ubuntu-os-cloud \
--boot-disk-size=10GB \
--boot-disk-type=pd-ssd \
--boot-disk-device-name=dev-vm \
--metadata-from-file=startup-script=code-server.sh \
--network-tier=STANDARD \
--tags=http-server-8080
