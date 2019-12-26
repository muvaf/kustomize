FROM alpine:3.11

ENV KUSTOMIZE_VERSION 3.5.3

RUN wget -O /usr/local/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize/v${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz && \
  chmod +x /usr/local/bin/kustomize

ENTRYPOINT [ "kustomize" ]
