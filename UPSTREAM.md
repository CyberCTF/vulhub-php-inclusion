# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `php/inclusion` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `build/php/app/` | [`php/inclusion`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/php/inclusion) |
| `base/php/7.1.3-apache/` | [`base/php/7.1.3-apache`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/php/7.1.3-apache): the Dockerfile of `vulhub/php:7.1.3-apache` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/php:7.1.3-apache`, pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

`build/php/Dockerfile` starts from `vulhub/php:7.1.3-apache` and copies in `www/`, which Vulhub's compose file mounts (Isoloom has no bind mounts). The exploit script (`exp.py`) is vendored and not used by the lab.

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
