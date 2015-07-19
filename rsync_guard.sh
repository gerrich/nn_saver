#!/bin/bash

target="$1" # /home/user/deepmind/dqn/DQN3_0_1_breakout_FULL_Y.t7
user="$2" # team_1
key="$3" # keys/team_1.dsa

bkp_host=93.175.18.243

[ -f backup_list.txt ] || touch backup_list.txt

# 1: check file is not backuped
mtime=$(stat -c %Y ${target})
is_ok=$(cut -f1 backup_list.txt | grep -c -e "${mtime}")

if [ "${is_ok}" -ge 1 ]; then
  exit 0
fi

rsync -e "ssh -o StrictHostKeyChecking=no -i ${key}" "${target}" "${user}@${bkp_host}:backup/$(basename ${target}).${mtime}"
echo "${mtime}" >> backup_list.txt



