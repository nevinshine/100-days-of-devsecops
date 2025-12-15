#!/bin/bash
# Automating the Day 4 Firewall Setup

echo "🛡️ Setting up UFW Firewall..."

# 1. Reset to defaults
sudo ufw default deny incoming
sudo ufw default allow outgoing

# 2. Allow SSH (Port 22)
sudo ufw allow ssh

# 3. Enable the Shield
echo "y" | sudo ufw enable

echo "✅ Firewall is active and secured."
sudo ufw status verbose
