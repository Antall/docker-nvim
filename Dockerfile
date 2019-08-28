FROM alpine:latest as builder

WORKDIR /mnt/build/ctags

RUN apk --no-cache add \
	git \
	xfce4-dev-tools \
	build-base

RUN \
	git clone https://github.com/universal-ctags/ctags \
	&& cd ctags \
	&& ./autogen.sh \
	&& ./configure --prefix=/usr/local \
	&& make \
	&& make install


FROM alpine:latest
MAINTAINER antall <antallfernandes@gmail.com>

ENV TERM xterm-256color

COPY --from=builder /usr/local/bin/ctags /usr/local/bin

WORKDIR /root/workdir

COPY install /tmp/install

RUN /tmp/install/packages.sh

COPY entrypoint.sh /tmp/entrypoint.sh
COPY config/init.vim /root/.config/nvim/init.vim

RUN \
  /tmp/install/nvim-config.sh; \
  /tmp/install/clear.sh

ENTRYPOINT ["/bin/sh", "/tmp/entrypoint.sh"]

