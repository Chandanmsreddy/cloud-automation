#!/bin/bash

source common.sh

CONFIG_FILE="../config/infra.conf"

source "$CONFIG_FILE"

GEN_DIR="../generated"

mkdir -p "$GEN_DIR"

cp ../templates/$CLOUD_PROVIDER/*.tpl "$GEN_DIR"

for file in "$GEN_DIR"/*.tpl
do
  mv "$file" "${file%.tpl}"
done

if [ "$CLOUD_PROVIDER" == "aws" ]; then

cat > "$GEN_DIR/terraform.tfvars" <<EOF
aws_region = "$AWS_REGION"
instance_count = $INSTANCE_COUNT
ami_id = "$AWS_AMI_ID"
instance_type = "$INSTANCE_TYPE"
key_pair = "$AWS_KEY_PAIR"
security_group_name = "$AWS_SECURITY_GROUP"
tag_name = "$TAG_NAME"
ingress_ports = [${INGRESS_PORTS}]
EOF

fi

if [ "$CLOUD_PROVIDER" == "gcp" ]; then

PUBLIC_KEY=$(cat "$PUBLIC_KEY_PATH")

cat > "$GEN_DIR/terraform.tfvars" <<EOF
gcp_project = "$GCP_PROJECT"
gcp_region = "$GCP_REGION"
gcp_zone = "$GCP_ZONE"
instance_count = $INSTANCE_COUNT
instance_type = "$INSTANCE_TYPE"
machine_image = "$GCP_MACHINE_IMAGE"
tag_name = "$TAG_NAME"
network = "$GCP_NETWORK"
subnetwork = "$GCP_SUBNETWORK"
public_key = "$PUBLIC_KEY"
ingress_ports = [${INGRESS_PORTS}]
EOF

fi

log "Terraform files generated"