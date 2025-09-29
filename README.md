# rhel-bash-util

A small collection of Bash utilities for Fedora / RHEL environments.  
Created as part of my preparation for Red Hat Open House and junior DevOps internships.

## Requirements
- Linux Fedora / RHEL (or compatible, e.g. Rocky Linux)
- Bash 5+
- `firewalld` (for `net_info.sh`)
- `nmcli` (comes with NetworkManager on Fedora/RHEL)

## Scripts

### 1) `backup_hosts.sh`
Backs up the system `/etc/hosts` file into `~/backups/hosts_<DATE>`.

```bash
chmod +x backup_hosts.sh
./backup_hosts.sh
ls -l ~/backups/

2) log_cleaner.sh

Creates a new log file under ~/logs_test/log_<DATE>.txt and removes old ones.

Pattern: log_*.txt

Default retention: delete files older than 1 day

Parameters: DIR [PATTERN] [RETENTION_DAYS]
Example: ./log_cleaner.sh ~/logs "*.log" 7

Dry-run mode: DRY_RUN=1 ./log_cleaner.sh

chmod +x log_cleaner.sh
./log_cleaner.sh
ls -l ~/logs_test/




3) net_info.sh

Prints a quick overview of active network interfaces and firewall zones.

chmod +x net_info.sh
./net_info.sh


Under the hood it calls:

nmcli device status

firewall-cmd --get-active-zones


git clone git@github.com:dantescientia/rhel-bash-util.git
cd rhel-bash-util

# back up /etc/hosts
sudo ./backup_hosts.sh

# generate test logs and prune old ones
./log_cleaner.sh
touch -d "2 days ago" ~/logs_test/log_old.txt
./log_cleaner.sh   # log_old.txt should be deleted

# network and firewall summary
./net_info.sh




backup_hosts.sh     # backup of /etc/hosts with timestamp
log_cleaner.sh      # log creation + cleanup based on retention
net_info.sh         # nmcli + firewalld summary
.gitignore          # ignores local test folders and temp files
