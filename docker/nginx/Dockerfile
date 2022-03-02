FROM nginx:latest

COPY ./docker/nginx/nginx.conf /etc/nginx/nginx.conf

# ビルド完了後にNginxを起動。foregroundで起動する
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf