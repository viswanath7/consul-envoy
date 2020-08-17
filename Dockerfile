FROM envoyproxy/envoy-alpine:v1.14.2 as envoy
FROM bitnami/consul:1.8.3
COPY --from=envoy /usr/local/bin /usr/local/bin
ENTRYPOINT ["/opt/bitnami/scripts/consul/entrypoint.sh"]
CMD ["/opt/bitnami/scripts/consul/run.sh"]
