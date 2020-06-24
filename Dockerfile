FROM swipl
COPY . /app
CMD ["swipl", "/app/genealogia.pl"]
