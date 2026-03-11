#!/bin/bash

sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

cat <<EOF | sudo tee /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>Terraform DevOps Project</title>
<style>
body{
    margin:0;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg,#1e3c72,#2a5298);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    color:white;
}
.container{
    text-align:center;
    background:rgba(0,0,0,0.4);
    padding:40px;
    border-radius:10px;
}
</style>
</head>

<body>
<div class="container">
<h1>🚀 Terraform Automation</h1>
<p>Server deployed automatically using Terraform</p>
<p>Created by <b>Gaurish Mundada</b></p>
</div>
</body>
</html>
EOF