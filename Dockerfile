FROM node:18-alpine

# ARG SHOPIFY_API_KEY
# ENV SHOPIFY_API_KEY=$SHOPIFY_API_KEY
ENV SHOPIFY_API_KEY=89bb00a906c44baf66f1da6a240e34e9
EXPOSE 8081
WORKDIR /app
COPY web .
RUN npm install
RUN cd frontend && npm install && npm run build
CMD ["npm", "run", "serve"]
