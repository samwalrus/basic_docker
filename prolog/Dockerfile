
   
FROM swipl:7.5.12

# Run the image as a non-root user
RUN useradd -m -s /bin/sh myuser
USER myuser
WORKDIR /home/myuser


ADD load.pl $HOME


ENV PORT 4000
EXPOSE 4000


CMD swipl load.pl --no-fork --port=$PORT