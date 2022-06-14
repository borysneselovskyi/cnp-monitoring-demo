#!/bin/bash


# Delete cluster
k3d cluster delete
k3d cluster create
k3d cluster stop

# Stop Docker:
ps ax|grep -i docker|egrep -iv 'grep|com.docker.vmnetd'|awk '{print $1}'|xargs kill
