# Fakeit

Docker image for https://github.com/JustinFeng/fakeit

## Usage

### Use local specification

    docker run -v <SPEC_FILE>:/home/<SPEC_FILE> -p 8081:8080 realfengjia/fakeit:latest --spec /home/<SPEC_FILE>

### Use remote specification

    docker run -p 8081:8080 realfengjia/fakeit:latest --spec <SPEC_URL>

**Note:** Mock server runs on port 8080 by default. To run mock server on a different port, you cannot use original option `--port` of `fakeit` command,
please use docker runtime option instead
