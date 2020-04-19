FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y curl less python3 python3-pip vim wget && \
    pip3 install beautifulsoup4 numpy pandas scipy scikit-learn scrapy && \
    useradd -ms /bin/bash ubuntu && \
    wget https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim -O /home/ubuntu/.vimrc
    
USER ubuntu
WORKDIR /home/ubuntu/project

CMD ["/bin/bash"]