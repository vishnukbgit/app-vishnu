FROM node:14.20.0
WORKDIR /app
COPY . .

ENV REACT_APP_API_URL "http://student.vishnu.com"

RUN npm i

EXPOSE 8000
RUN npm run build

CMD ["node","server.js"]
