#!/bin/bash

echo "=== SERVER STATS ==="

# CPU usage (top 1 line after header)
echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

# Memory usage (free vs used)
echo ""
echo "Memory Usage:"
free -h

# Disk usage (free vs used)
echo ""
echo "Disk Usage:"
df -h --total | grep total

# Top 5 processes by CPU
echo ""
echo "Top 5 processes by CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

# Top 5 processes by memory
echo ""
echo "Top 5 processes by Memory:"
ps -eo pid,comm,%mem --sort=-%mem | head -6
