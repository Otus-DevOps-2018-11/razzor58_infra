#!/bin/bash
cat << 'EOF' >> /etc/systemd/system/puma.service
[Unit]
Description=Puma HTTP Server
After=network.target
[Service]
Type=simple
WorkingDirectory=/home/appuser/reddit
ExecStart=/usr/local/bin/puma -d
Restart=always
[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl start puma
sudo systemctl enable puma

