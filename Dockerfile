FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev cmake && rm -rf /var/lib/apt/lists/*
RUN gem install github-linguist
RUN gem install gollum
RUN gem install org-ruby  # optional
RUN mkdir /wiki
WORKDIR /wiki
COPY start.sh /wiki
ENTRYPOINT ["/wiki/start.sh"]
EXPOSE 8080

