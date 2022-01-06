FROM kalilinux/kali-rolling:latest
RUN apt update
RUN apt upgrade -yy
RUN rm -rf /var/lib/apt/lists/*
CMD ["bash"]