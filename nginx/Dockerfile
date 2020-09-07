FROM nginx:stable
#デフォルトのnginxファイルを削除して作成したものコンテナないにコピー
RUN rm -f /etc/nginx/conf.d/*

COPY nginx.conf /etc/nginx/conf.d/kimono.conf

CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf