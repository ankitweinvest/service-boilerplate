FROM alpine:3.2

RUN apk -U add nodejs && npm install -g stubby

ENV APP_HOME /stubs

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Copy over our application code
ADD . $APP_HOME

CMD stubby --admin 5558 --stubs 8187 --data endpoints.yml
