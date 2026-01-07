FROM fedora:rawhide
RUN dnf install -y gettext && dnf clean all
CMD ["/bin/bash", "-vxc", "envsubst < /ipa-server-install-options.template > /ipa-server-install-options"]