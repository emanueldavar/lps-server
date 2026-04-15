FROM nginx:alpine

# Remove config padrão do nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia nossa config de wildcard vhost
COPY nginx.conf /etc/nginx/conf.d/lps.conf

# Cria pasta /lps/ (volume persistente montado aqui pelo EasyPanel)
RUN mkdir -p /lps

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
