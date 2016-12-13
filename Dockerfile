FROM busybox:ubuntu-14.04
MAINTAINER william0wang

# Install ngrok
COPY server_linux_amd64 /bin/kcptund
RUN chmod 755 /bin/kcptund

CMD kcptund -l :${kcp_out_port} -t ${kcp_in_addr} --crypt ${kcp_crypt} --key ${kcp_key} --mode ${kcp_mode}
