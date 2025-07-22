
setx EDG_CONFIG_HOME ~/.config
setx EDG_DATA_HOME ~/.config_data
setx HOME ~
#### config scoop ing
https://github.com/lzwme/scoop-proxy-cn
# 脚本执行策略更改，默认自动同意
Set-ExecutionPolicy RemoteSigned -scope CurrentUser -Force

# 方法一：执行安装命令（默认安装在用户目录下，如需更改请执行下面的“自定义安装目录”命令）
iwr -useb scoop.201704.xyz | iex

## 方法二：自定义安装目录（注意将目录修改为合适位置)
irm scoop.201704.xyz -outfile 'install.ps1'
.\install.ps1 -ScoopDir 'D:\Scoop' -ScoopGlobalDir 'D:\GlobalScoopApps'

# 若已安装官方源，可执行如下命令进行切换
scoop config SCOOP_REPO "https://gitee.com/scoop-installer/scoop"

# 添加 spc bucket
scoop bucket add spc https://gitee.com/wlzwme/scoop-proxy-cn.git

# 拉取新库地址
scoop update

### 该scoop 库已默认添加proxy
# 添加代理
scoop config URL_PROXY "https://scoop.201704.xyz"
# 添加代理
## 使用本仓库已默认使用该代理，无需重复添加。只有切换至其他代理站时才需要设置。
scoop config URL_PROXY "https://jiashu.1win.eu.org"

# 删除代理
scoop config rm URL_PROXY

### 可供设置的代理站
转发服务域名1：https://jiashu.1win.eu.org
转发服务域名2：https://j.1lin.dpdns.org
转发服务域名3：https://j.1win.ddns-ip.net
转发服务域名4：https://j.1win.ggff.net(一年制,2026年5月3日到期)
转发服务域名5：https://j.1win.ip-ddns.com
转发服务域名6：https://j.n1win.dpdns.org
# 删除代理
scoop config rm URL_PROXY

# 默认scoop search命令效率低
scoop install scoop-search
scoop install scoop-completion
# config scoop alias
scoop alias add rm "scoop uninstall $args[0]"
scoop alias add i "scoop install $args[0]"

#### config scoop end

$nu.config-path
#### config nushell  ing
alias ss = scoop-search
alias s = scoop
# win配置
alias cdu = cd '~/AppData/Roaming'
# nushell beautiful
s i starship
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

scoop bucket add nerd-fonts
scoop install jetbrainsmono-nf-mono

starship preset bracketed-segments -o ~/.config/starship.toml
https://thejiahao.github.io/zh-cn/posts/starship-setup/

#### 配置nushell  end
