
FROM devopsfaith/krakend:2.9.4
COPY apigateway.json /etc/krakend/krakend.json
WORKDIR /etc/krakend

ENTRYPOINT [ "/usr/bin/krakend" ]
CMD [ "run", "-c", "/etc/krakend/krakend.json" ]

EXPOSE 8080
