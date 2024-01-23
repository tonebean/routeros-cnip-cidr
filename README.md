# RouterOS CN IP List(Only IPv4)
Fork from Github: RookieZoe

CN ip list script generator for MikroTik RouterOS

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
