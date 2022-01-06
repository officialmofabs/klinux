# docker-compose-kali-linux
Just a docker setup for running [kali linux][1]. 

You can visit the kali linux official [Docker Hub][2].

```bash
$ docker-compose up --build
$ docker-compose run kali bash
```

Next steps, [install needed metapackages][3] example with **kali-linux-headless**:

```bash
┌──(root💀ce74266505e6)-[/]
└─> apt install kali-linux-headless
```

When installed, in a second terminal, you will have to commit your container in a new image : 
```bash
docker ps
CONTAINER ID   IMAGE                                 COMMAND                  CREATED         STATUS         PORTS                                                 NAMES
30c3520011e6   docker-compose-kali-linux_kali        "bash"                   2 minutes ago   Up 2 minutes                                                         docker-compose-kali-linux_kali_run_6d631f9dc818
```

The container id is **30c3520011e6**, just commit it into a new image : 
```bash
docker commit 30c3520011e6 kali-test
```

Now, you have a kali-test image with your custom packages installed :
```bash
docker images
REPOSITORY                       TAG            IMAGE ID       CREATED         SIZE
kali-test                        latest         7634f71c1c2f   2 minutes ago   238MB
```

You can run it with : 
```bash
```bash
docker run -it kali-test bash
┌──(root💀ce74266505e6)-[/]
└─> 
```

## Links 
- [Kali Linux Website][1]
- [Kali Linux Docker Hub page][2]
- [Kali Linux Metapackages list][3]
- [Kali Linux Documentation][5]
- [Kali Linux Package list][6]
- [Kali Linux Gitlab][4]

[1]: https://www.kali.org
[2]: https://hub.docker.com/u/kalilinux
[3]: https://www.kali.org/docs/general-use/metapackages/
[4]: https://gitlab.com/kalilinux
[5]: https://www.kali.org/docs/
[6]: https://www.kali.org/tools/