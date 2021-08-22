# Docker container for proActiv (v1.1.18)

Dockerfile for [proActiv](https://github.com/GoekeLab/proActiv): Estimation of Promoter Activity from RNA-Seq data

It's on [dockerhub](https://hub.docker.com/r/naotokubota/proactiv) and [github](https://github.com/NaotoKubota/proactiv).

## tags and links
- `1.1.18` [(master/Dockerfile)](https://github.com/NaotoKubota/proactiv/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/proactiv:1.1.18
```

or

```sh
git clone git@github.com:NaotoKubota/proactiv.git
cd proactiv
docker build --rm -t naotokubota/proactiv:1.1.18 .
```

## running

```sh
docker run --rm -it naotokubota/proactiv
```
