FROM gitpod/workspace-full

# add your tools here
RUN apt-get install build-essential libssl-dev git -y \
 && git clone https://github.com/wg/wrk.git wrk \
 && cd wrk \
 && make \
 && cp wrk /usr/local/bin \
 && cd .. && rm -Rf wrk \
 && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*