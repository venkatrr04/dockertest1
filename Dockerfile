#FROM nginx:latest 
#MAINTAINER mavrick202@gmail.com 
#RUN apt install -y curl
#COPY index.html /usr/share/nginx/html/
#COPY scorekeeper.js /usr/share/nginx/html/
#COPY style.css /usr/share/nginx/html/
#HEALTHCHECK CMD curl --fail http://localhost || exit 1
#CMD ["nginx", "-g", "daemon off;"]

FROM tomcat:latest
MAINTAINER venkatrr04@gmail.com
RUN apt install -y curl
COPY index.html /usr/share/nginx/html/
COPY scorekeeper.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY /home/ubuntu/bamboo-home/xml-data/build-dir/WAR-TES-JOB1/webapp/target/webapp.war /usr/local/tomcat/webapps
#HEALTHCHECK CMD curl --fail http://localhost || exit 1
CMD ["tomcat", "-g", "daemon off;"]
