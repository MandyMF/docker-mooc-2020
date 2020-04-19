FROM alpine:3.7

WORKDIR /usr/app

RUN apk add --no-cache git g++ && \
    git clone https://github.com/aanykanen/sqmatrix-calculator.git . && \
    mkdir build && \
    g++ -O3 -Wall -DNDEBUG -std=c++11 test/**.cpp src/**.cpp -Iinclude/external/ -Iinclude/internal/ -o build/main && \
    rm -rf include src test && \
    apk del git && \
    addgroup app && \
    adduser -D -G app app && \
    chown -R app:app /usr/app

USER app

CMD ["./build/main"]