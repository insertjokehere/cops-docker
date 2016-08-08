## cops-docker

Run [COPS](https://github.com/seblucas/cops) inside docker

#### Quickstart

```
docker run -ti -p 8080:80 --name cops --rm -v /path/to/your/ebooks:/media:ro cops
```

#### Implementation notes

 * In my environment, I want COPS to be served from foo.example.com/cops/, so the nginx config reflects this
 * I mount my ebook library from an NFS share, which causes SQLite to be unusably slow. As a work around, there is a supervisor job in the image that rsyncs the metadata.db file off the share into a tmp directory every 2 minutes, and COPS reads that
