FROM httpd:latest
RUN mkdir /DarcyCorrea-2672501
RUN chmod -R 777 /DarcyCorrea-2672501
LABEL maintainer="darcy"
COPY ./IMG1.jpg /DarcyCorrea-2672501
COPY ./main.sh /DarcyCorrea-2672501
RUN chmod +x /DarcyCorrea-2672501/main.sh
CMD [ "/DarcyCorrea-2672501/main.sh"]
RUN apt-get update && apt-get install -y vim
COPY ./darcy /usr/local/apache2/htdocs/
EXPOSE 8124
CMD [ "apachectl", "-D", "FOREGROUND"]