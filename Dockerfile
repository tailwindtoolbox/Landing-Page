FROM : ubuntu
RUN apt update
RUN apt-get update
RUN apt install nginx -y
RUN mkdir /root/.ssh/
ADD id_rsa.pub /root/.ssh/id_rsa.pub
COPY /root/.ssh/id_rsa.pub /root/.ssh/id_rsa.pub
RUN chmod 700 /root/.ssh/id_rsa.pub
RUN chown -R root:root /root/.ssh
RUN git clone git@github.com:jogarao96/Landing-Page.git /home/var/www
EXPOSE : 8080
RUN systemctl start nginx
