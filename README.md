# docker-rpm-builder
rpm-builder

## fork source

https://github.com/astj/docker-mackerel-rpm-builder/

## Usage

Use `docker run ...` instead of `rpmbuild` command.

Following example will work as `rpmbuild -bb ./SPEC.spec` and the artifact will be placed to `./rpmbuild/RPMS/`.

```
$ docker run --rm -v "$(PWD)":/workspace -v "$(PWD)/rpmbuild":/rpmbuild masahide:docker-rpm-builder -bb SPEC.spec
```

## Tags

- `centos6` : based on `centos6`
- `centos7` : based on `centos7`
- `amzn1`   : based on `amzn1`

