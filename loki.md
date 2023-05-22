需要安装docker loki 插件，来抓取docker 日志

https://grafana.com/docs/loki/latest/clients/docker-driver/

```
# install
docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

# upgrade
docker plugin disable loki --force
docker plugin upgrade loki grafana/loki-docker-driver:latest --grant-all-permissions
docker plugin enable loki
systemctl restart docker

# uninstall
docker plugin disable loki --force
docker plugin rm loki
```

> centos7 确保安装docker-ce 版本
