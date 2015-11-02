FROM haskell:7.8
RUN apt-get update && apt-get install haskell-platform -y
RUN cabal update

ADD ./algorithms/algorithms.cabal /opt/algorithms/algorithms.cabal

RUN cd /opt/algorithms && cabal install --only-dependencies -j4


ADD ./algorithms /opt/algorithms
RUN cd /opt/algorithms && cabal install

# Add installed cabal executables to PATH
ENV PATH /root/.cabal/bin:$PATH

# Default Command for Container
WORKDIR /opt/algorithms
CMD ["algorithms"]
