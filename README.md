# Don't use this repo!
Its old, running an ancient version of PHP and an unsupported base image

Consider using [linuxserver/cops](https://hub.docker.com/r/linuxserver/cops/) instead

## cops-docker

Run [COPS](https://github.com/seblucas/cops) inside docker

#### Quickstart

```
docker run -ti -p 8080:80 --name cops --rm -v /path/to/your/ebooks:/media:ro cops
```

#### Implementation notes

 * In my environment, I want COPS to be served from foo.example.com/cops/, so the nginx config reflects this
 * I mount my library over NFS on CoreOS. I found that things were really slow unless I used nfs4
