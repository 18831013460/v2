apt install curl
bash <(curl -L -s https://install.direct/go.sh)
cat /etc/v2ray/config.json
# firewalld放行端口（适用于CentOS7/8）
firewall-cmd --permanent --add-port=23581/tcp # 23581改成你配置文件中的端口号
firewall-cmd --reload
# ufw放行端口（适用于ubuntu）
ufw allow 23581/tcp # 23581改成你的端口号
# iptables 放行端口（适用于CentOS 6/7）
iptables -I INPUT -p tcp --dport 23581 -j ACCEPT
# 设置开机启动
systemctl enable v2ray
# 运行v2ray
systemctl start v2ray
