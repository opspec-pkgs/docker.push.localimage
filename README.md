[![build](https://github.com/opspec-pkgs/docker.push.localimage/actions/workflows/build.yml/badge.svg)](https://github.com/opspec-pkgs/docker.push.localimage/actions/workflows/build.yml)


<img src="icon.svg" alt="icon" height="100px">

# Problem statement

Pushes image to docker, or `registry`'s image store. * `dockerSocket` must be the correct socket path to the host machine's `dockerd` runtime socket IE `/var/run/docker.sock` (default path). For linux, you can try `netstat -lx | grep docker | grep -Po '/.*docker.sock'` to verify the proper socket file. * `imageName` is the name of the image you want to give the resultant image for `docker build` * `username` and `password` used to authenticate to registry

# Example usage

## Visualize

```shell
opctl ui github.com/opspec-pkgs/docker.push.localimage#1.0.0
```

## Run

```
opctl run github.com/opspec-pkgs/docker.push.localimage#1.0.0
```

## Compose

```yaml
op:
  ref: github.com/opspec-pkgs/docker.push.localimage#1.0.0
  inputs:
    dockerSocket:  # 👈 required; provide a value
    imageName:  # 👈 required; provide a value
    password:  # 👈 required; provide a value
    username:  # 👈 required; provide a value
  ## uncomment to override defaults
  #   registry: "docker.io"
```

# Support

join us on
[![Slack](https://img.shields.io/badge/slack-opctl-E01563.svg)](https://join.slack.com/t/opctl/shared_invite/zt-51zodvjn-Ul_UXfkhqYLWZPQTvNPp5w)
or
[open an issue](https://github.com/opspec-pkgs/docker.push.localimage/issues)

# Releases

releases are versioned according to
[![semver 2.0.0](https://img.shields.io/badge/semver-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
and [tagged](https://git-scm.com/book/en/v2/Git-Basics-Tagging); see
[CHANGELOG.md](CHANGELOG.md) for release notes

# Contributing

see
[project/CONTRIBUTING.md](https://github.com/opspec-pkgs/project/blob/main/CONTRIBUTING.md)
