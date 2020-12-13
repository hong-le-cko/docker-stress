FROM ubuntu:trusty
MAINTAINER Jeff Lindsay <progrium@gmail.com>

RUN apt-get update && apt-get install -y stress

ENTRYPOINT ["/usr/bin/stress", "--verbose"]
CMD [--cpu,8,--io,4,--vm,8,--vm-bytes,256M,--timeout,120s]
