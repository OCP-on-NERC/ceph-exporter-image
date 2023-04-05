# Upstream repository does not currently tag images, so pin this to a specific hash.
# Follow https://github.com/digitalocean/ceph_exporter/issues/236 for updates to
# this situation.
FROM docker.io/digitalocean/ceph_exporter@sha256:de990d57f9bcdf2483ec66f3fd7a14717a547adc9e7b7217acc2b201d6c6905f

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["bash", "/docker-entrypoint.sh"]
CMD ["ceph_exporter"]
