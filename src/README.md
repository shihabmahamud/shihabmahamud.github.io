## Add asciinema cast on post

1. You can now embed asciinema casts in your Hugo posts and pages with the following shortcode:

```
{{< asciinema key="cph-tool-install" rows="20" preload="1" cols="100" >}}
```
    
2. You also need to include asciinema = true in the frontmatter for you post too, to make sure the javascript and css assets are included:

```yaml
---
title: Kubernetes Backup - ARK 
description: Kubernetes backup process using ark
asciinema: true
tags:
- kubernetes
- backup
---
```
