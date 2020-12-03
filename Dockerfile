#Use CxFlow Base image
FROM mithileshpawar/cxflow
#Apply any updates
RUN apk update && apk upgrade
#Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
#Make it executable
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]