# fluentd-s3
A docker image which has td-agent with aws s3 plugin

https://hub.docker.com/r/coze/fluentd-s3/tags/

usage:

```
   fluentd:
     container_name: fluentd
     image: coze/fluentd-s3:latest
     ports:
       - 24224:24224
     environment:
       - FLUENTD_AWS_S3_BUCKET=your bucket name
       - FLUENTD_AWS_KEY_ID=your aws key
       - FLUENTD_AWS_SECRET_KEY=your aws secret
       - FLUENTD_AWS_S3_REGION=ap-northeast-1
       - FLUENTD_MATCH_PATTERN=golem-local
```

The match pattern is actually not used atm.
