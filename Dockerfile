FROM private-registry-test.nginx.com/nginx-plus/rootless-agent:nginx-plus 

user root
RUN mkdir -p /usr/lib/nginx/njs_modules/
RUN curl -L -o /usr/lib/nginx/njs_modules/acme.js https://github.com/nginx/njs-acme/releases/download/v1.0.0/acme.js

user nginx
