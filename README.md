# raspberry-setup

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