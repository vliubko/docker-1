FROM debian

RUN apt-get -y update && apt-get -y install git golang sqlite3

ENV USER=root GOPATH=/

WORKDIR src/github.com/gogits

RUN git clone --depth=1 -b develop https://github.com/gogits/gogs
RUN go get -u -tags sqlite github.com/gogits/gogs

WORKDIR gogs

RUN go build -tags sqlite

EXPOSE 3000

ENTRYPOINT ["./gogs", "web"]

#docker build -t gogs .
#docker run -p 3000:3000 -t gogs
