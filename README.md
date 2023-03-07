# partnerpool-utils

## Getting started
This is a repo for utils used overall the partnerpool project. 

## Scripts 

### getlogs.sh 
for non windows users who cannot install tools such as Kubetail, this script gets all logs from pods in a context 
and namespace at once to ease the logs checking process in the daily maintenance tasks

usage
```
 ./getlogs.sh <context> <namespace>
```