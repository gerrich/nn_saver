
## Get last rsync_guard from  git
```
cd
git clone https://github.com/gerrich/nn_saver.git
```

## Set target name
```
vim ~/nn_saver/rsync_guard.sh
...
```

## Add rsync_guard.sh to crontab
```
*/30 * * * * ~/nn_saver/rsync_guard.sh /home/user/deepmind/dqn/DQN3_0_1_breakout_FULL_Y.t7 team_1 keys/team_1.dsa 
```
## Enjoy!

