FROM ghost:latest

ADD adapter.sh /opt/adapter.sh
ADD config_mysql.js /opt/config_mysql.js
ADD config_sqlite.js /opt/config_sqlite.js
ADD /text /usr/src/ghost/content/themes/


RUN chmod +x /opt/adapter.sh

ENTRYPOINT ["/opt/adapter.sh", "/entrypoint.sh"]
CMD ["npm", "start", "--production"]
