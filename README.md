# scratch

## create scratch image

```
tar cv --files-from /dev/null | docker import - seanly/scratch
```

## output to host

```
docker image save seanly/scratch:docker | tar --extract --wildcards --to-stdout '*/layer.tar' | tar --extract --ignore-zeros docker.tar.gz
```

or

```
docker save seanly/scratch:docker | gzip > images.tar.gz
gunzip -c images.tar.gz | tar --extract --wildcards --to-stdout '*/layer.tar' | tar --extract --ignore-zeros docker.tar.gz
```
