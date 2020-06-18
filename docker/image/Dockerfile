FROM selenium/standalone-chrome-debug
LABEL authors=PuppeteerJestTS
USER seluser 

#RUN sudo apt-get purge nodejs
#RUN sudo apt-get autoremove
USER root

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
    && apt-get -y install \
            nodejs \
            build-essential \
                && apt-get autoremove -y \
                && rm -r /var/lib/apt/lists/*