FROM ubuntu:20.04

RUN apt update

RUN apt upgrade -y

RUN apt install postfix dovecot-imapd dovecot-pop3d

#COPY main.cf /etc/postfix

# Add User
RUN useradd -c 'User Bob' -m Bob

# Set user passord
RUN echo "Bob:bob123" | passwd bob

CMD ["postfix", "start-fg"]