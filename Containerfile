FROM registry.access.redhat.com/ubi9/nginx-124

ENV NGINX_VERSION=1.24

ADD ./nginx-config/$NGINX_VERSION/test-app/nginx.conf "${NGINX_CONF_PATH}"
ADD ./nginx-config/$NGINX_VERSION/test-app/nginx-default-cfg/*.conf "${NGINX_DEFAULT_CONF_PATH}"
ADD ./nginx-config/$NGINX_VERSION/test-app/nginx-cfg/*.conf "${NGINX_CONFIGURATION_PATH}"
ADD ./nginx-config/$NGINX_VERSION/test-app/*.html ./

CMD nginx -g "daemon off;"
