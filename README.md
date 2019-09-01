# Fakeit

Docker image for https://github.com/JustinFeng/fakeit

## Usage

### Use local specification

    docker run -t -v <SPEC_FILE>:/home/<SPEC_FILE> -p 8081:8080 realfengjia/fakeit:latest --spec /home/<SPEC_FILE>

### Use remote specification

    docker run -t -p 8081:8080 realfengjia/fakeit:latest --spec <SPEC_URL>

__Notes:__

* Mock server runs on port 8080 by default. To run mock server on a different port, you cannot use original option `--port` of `fakeit` command, please use docker runtime option instead
* To preserve color highlights in logging, please enable `tty` while running docker container