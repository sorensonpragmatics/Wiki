FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev cmake && rm -rf /var/lib/apt/lists/*
RUN gem install github-linguist
RUN gem install gollum
RUN gem install org-ruby  # optional
COPY start.sh /
ENTRYPOINT ["/start.sh"]
VOLUME /wiki
EXPOSE 8080

