# rpm-builder

## What's this

This Docker image is used to build RPM packages in Dockernized envirionment.  It's based on [CentOS official Docker image](https://hub.docker.com/_/centos/).


## Usage

Use `docker run ...` instead of `rpmbuild` command.

Following example will work as `rpmbuild -bb ./SPEC.spec` and the artifact will be placed to `./rpmbuild/RPMS/`.

```
$ docker run --rm -v "$(PWD)":/workspace -v "$(PWD)/rpmbuild":/rpmbuild masahide:docker-rpm-builder -bb SPEC.spec
```

## Tags

- `centos7-goofys` : based on `centos:7`
