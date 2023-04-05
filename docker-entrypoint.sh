#!/bin/bash

# This script uses the CEPH_MON_HOSTS< CEPH_USER, and CEPH_USERKEY environment
# variables to create a basic Ceph configuration for use by ceph_exporter.

set -e

mkdir -p /etc/ceph

cat > /etc/ceph/ceph.conf <<EOF
[global]
mon_host = $CEPH_MON_HOSTS
EOF

# Remove `client.` prefix on CEPH_USER
CEPH_USER=${CEPH_USER#client.}

cat > "/etc/ceph/ceph.client.${CEPH_USER}.keyring" <<EOF
[client.${CEPH_USER}]
key = $CEPH_USERKEY
EOF

exec "$@"
