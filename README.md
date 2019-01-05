bastion_IP = 35.228.0.146  
someinternalhost_IP = 10.132.0.3

###   Подключение к хостам по SSH
1. На рабочей машине задать переброс портов на хост bastion
`nohup ssh -L 2224:localhost:4444 35.210.17.100 -N &`
2. На хосте bastion задать переброс портов на internalhost1:  
`nohup ssh -L 4444:localhost:22 10.132.0.3 -N &`
3. На рабочей машине внести в файл `~/.ssh/config` строки  
    ```bash
    Host inthost
            HostName localhost
            Port 2224
            IdentityFile ~/.ssh/ilya
    ```  
4. Подключиться к внутреннему хосту командой  
 `ssh inthost`