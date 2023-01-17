FROM nginx:1.17.1-alpine
COPY ./dist/my-app-go-my-code /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx" , "-g", "daemon off;"]