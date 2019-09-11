#!/bin/bash
service_name=share
sudo tee /etc/systemd/system/$service_name.service <<-'EOF'
[Unit]
Description=share Service
After=network-online.target
Wants=network-online.target systemd-networkd-wait-online.service

[Service]
EOF

sudo tee -a /etc/systemd/system/${service_name}.service <<EOF
User=$(whoami)
Type=simple
Environment="PYTHONPATH=$PYTHONPATH"
Environment="PYTHONUSERBASE=$PYTHONUSERBASE"
Restart=on-abnormal
ExecStart=$(cd "$(dirname "$0")";pwd)/server.sh
EOF

sudo tee -a /etc/systemd/system/${service_name}.service <<-'EOF'
ProtectSystem=full

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl enable ${service_name}.service
sudo systemctl restart ${service_name}.service
sudo systemctl status ${service_name}.service
