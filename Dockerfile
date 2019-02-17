FROM nginx
ENV API_URL http://localhost:8080
COPY dist/angular-demo /usr/share/nginx/html
COPY nginx/nginx.conf /etc/nginx/conf.d/default.template
COPY nginx/entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]