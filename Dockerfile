FROM ubuntu:14.04
COPY ./port.sh /
RUN  chmod +x port.sh
ENTRYPOINT ["/port.sh"]
CMD ["sudo apt install cifs-utils"]