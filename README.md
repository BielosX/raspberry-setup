# raspberry-setup

## Root login
1) Edit file `/etc/ssh/sshd_config`, find line
`PermitRootLogin without-password` and change to `PermitRootLogin yes`

2) Set root password
```shell
sudo passwd root
```

3) restard `ssh` service
```shell
systenctl restart ssh
```

## Node connection setup

1) Generate SSH key on your machine
```shell
ssh-keygen
```

2) Copy ID to remote host
```shell
ssh-copy-id -i ~/.ssh/raspberrypi root@raspberrypi
```

3) Setup SSH Agent
```shell
ssh-agent zsh
ssh-add ~/.ssh/raspberrypi
```

Ansible should be able to connect now to the remote host as `root` user.

## Clean systemd unit logs
```shell
journalctl --vacuum-time=1s --unit=your.service
```

## PostgreSQL

Client auth process is controler by [pg_hba.conf](https://www.postgresql.org/docs/current/auth-pg-hba-conf.html)

### Systemd

Service `postgresql` is responsible for spawning services `postgresql@version-instance`, to view actual status run
```shell
systemctl status 'postgresql*'
```