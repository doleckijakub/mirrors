FROM archlinux:latest

RUN pacman -Syu --noconfirm rsync

RUN mkdir -p /srv/archlinuxmirror && chown nobody:nobody /srv/archlinuxmirror

COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

WORKDIR /srv/archlinuxmirror

EXPOSE 873

CMD ["/usr/local/bin/run.sh"]
