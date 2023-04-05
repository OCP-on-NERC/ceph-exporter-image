# Ceph metrics exporter for ODF

We're running [ODF][] in external mode, and our remote Ceph cluster is provided
"as a service". We don't have access to the native Ceph metrics endpoint. This
container image will create a Ceph configuration using credentials available in
the `openshift-storage` namespace and then run [`ceph_exporter`][ceph_exporter]
to provide a Prometheus-compatible metrics endpoint.

[ODF]: https://www.redhat.com/en/technologies/cloud-computing/openshift-data-foundation
[ceph_exporter]: https://github.com/digitalocean/ceph_exporter
