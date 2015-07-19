
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
*/30 * * * * ~/nn_saver/rsync_guard.sh 
```
## Enjoy!

