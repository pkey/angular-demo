FROM nginx
COPY dist/angular-demo /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
CMD envsubst < /etc/nginx/conf.d/mysite.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off';
EXPOSE 80