# docker-madoko-texlive-full

# Run container

~~~
dri -v ${PWD}:/root -w /root madoko:latest /bin/bash
~~~


# Build document

~~~
madoko --pdf paper.mdk
~~~

# Watch document

~~~
inotifywait -m -e modify . | awk '$3 ~ /\.mdk/ {system("madoko --pdf paper.mdk")}'
~~~
