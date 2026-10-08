# PHP Local File Inclusion RCE through phpinfo()

[Vulhub](https://vulhub.org)'s [`php/inclusion`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/php/inclusion) environment, by
phith0n and the Vulhub contributors: PHP 7.1 with a local file inclusion and a phpinfo() page, which together turn the LFI into code execution through a race on the upload temporary file. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/php:7.1.3-apache` with the site copied in ([`build/php/`](build/php)); the environment folder is vendored in [`build/php/app/`](build/php/app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| php | Apache and PHP 7.1 on port 80, published as 8080 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8080/phpinfo.php and http://localhost:8080/lfi.php?file=/etc/passwd. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/php/inclusion/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
