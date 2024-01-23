# RouterOS CN IP List(Only IPv4)
Fork from Github: RookieZoe

CN ip list script generator for MikroTik RouterOS

[![status](https://img.shields.io/github/workflow/status/RookieZoe/routeros-cnip-cidr/cnip-cidr-gen?color=34d058&label=cnip-cidr-gen&logo=github&logoColor=fff)](https://github.com/tonebean/routeros-cnip-cidr/actions/workflows/cnip-cidr-gen.yml)

## To use

```Ros Script
/tool fetch url=https://mirror.ghproxy.com/https://raw.githubusercontent.com/xxxx/cn_ip_cidr.rsc
system logging disable 0
import file-name=cn_ip_cidr.rsc
system logging enable 0
file remove cn_ip_cidr.rsc
:log info ("cnip列表已更新")
```

## Tanks to

[ispip.clang.cn](https://ispip.clang.cn/)
