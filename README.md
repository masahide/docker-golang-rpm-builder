# mackerel-rpm-builder

## What's this

This Docker image is used to build RPM packages in Dockernized envirionment.

This image is intended to build [mackerel-agent](https://github.com/mackerelio/mackerel-agent), but maybe you can use this image to build another packages.

## Usage

Use `docker run ...` instead of `rpmbuild` command.

Following example will work as `rpmbuild -bb ./SPEC.spec` and the artifact will be placed to `./rpmbuild/RPMS/`.

```
$ docker run --rm -v "$(PWD)":/workspace -v "$(PWD)/rpmbuild":/rpmbuild astj:docker-mackerel-rpm-builder -bb SPEC.spec
```

## Tags

TBD (We'd like to provide `c6`, `c7` tag)
