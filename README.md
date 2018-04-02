# Duplicity in Docker

This container is meant to run [Duplicity](http://duplicity.nongnu.org/), mainly together with [conplicity](https://github.com/camptocamp/conplicity).

To use this container with `conplicity` instead of the default, run conplicity with the following arguments:

```sh
$ conplicity --duplicity-image="moritzheiber/duplicity:latest" [...]
```

## Building

```sh
$ ./run build
```

## Run ServerSpec tests

```sh
$ ./run test
```
