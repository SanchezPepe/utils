# Code Server Install
curl -fsSL https://code-server.dev/install.sh | sh

# To have systemd start code-server now and restart on boot:
sudo systemctl enable --now code-server@$USER

# Setting config file to access code-server on port
echo
{
  echo 'bind-addr: 0.0.0.0:8080'
  echo 'auth: password'
  echo 'password: abc123'
  echo 'cert: false'  
} > /home/$USER/.config/code-server/config.yaml
