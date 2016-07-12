FROM golang:1.6.2

curl -s https://glide.sh/get | sh

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN bash -c 'echo "source /usr/local/rvm/scripts/rvm" >> $HOME/.bashrc'
RUN bash -c 'source /usr/local/rvm/scripts/rvm && gem install step-up'
