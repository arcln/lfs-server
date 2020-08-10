FROM golang

RUN go get github.com/github/lfs-test-server

RUN cd $GOPATH/src/github.com/github/lfs-test-server && go build -o server

ENV LFS_LISTEN="tcp://:9999"
ENV LFS_HOST="localhost:9999"
ENV LFS_CONTENTPATH="/data"
ENV LFS_ADMINUSER="admin"
ENV LFS_ADMINPASS="pass"
ENV LFS_SCHEME="http"

CMD $GOPATH/src/github.com/github/lfs-test-server/server
