Microsoft Windows [Version 10.0.19045.6466]
(c) Microsoft Corporation. All rights reserved.

C:\Windows\system32>wsl --update
Installing: Windows Subsystem for Linux
Windows Subsystem for Linux has been installed.

C:\Windows\system32>docker --version
Docker version 29.4.3, build 055a478

C:\Windows\system32>docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
4f55086f7dd0: Pull complete
d5e71e642bf5: Download complete
Digest: sha256:0e760fdfbc48ba8041e7c6db999bb40bfca508b4be580ac75d32c4e29d202ce1
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/


C:\Windows\system32>docker ps -a
CONTAINER ID   IMAGE         COMMAND    CREATED         STATUS                     PORTS     NAMES
c473d63692d9   hello-world   "/hello"   3 minutes ago   Exited (0) 3 minutes ago             frosty_shannon

C:\Windows\system32>docker start CONTAINER_ID
Error response from daemon: No such container: CONTAINER_ID
failed to start containers: CONTAINER_ID

C:\Windows\system32>docker startc473d63692d9
docker: unknown command: docker startc473d63692d9

Run 'docker --help' for more information

C:\Windows\system32> docker start c473d63692d9
c473d63692d9

C:\Windows\system32>docker ps -a
CONTAINER ID   IMAGE         COMMAND    CREATED          STATUS                      PORTS     NAMES
c473d63692d9   hello-world   "/hello"   31 minutes ago   Exited (0) 55 seconds ago             frosty_shannon

C:\Windows\system32>dokar Start c473d63692d9
'dokar' is not recognized as an internal or external command,
operable program or batch file.

C:\Windows\system32>docker start c473d63692d9
c473d63692d9

C:\Windows\system32>docker rm c473d63692d9
c473d63692d9

C:\Windows\system32>docker run -it ubunt
Unable to find image 'ubunt:latest' locally

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
docker: Error response from daemon: pull access denied for ubunt, repository does not exist or may require 'docker login'

Run 'docker run --help' for more information

C:\Windows\system32>docker run -it ubuntu
Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
1c24335ddd46: Pull complete
6f5c5aa4e145: Pull complete
9bcf140d7f0f: Download complete
Digest: sha256:f3d28607ddd78734bb7f71f117f3c6706c666b8b76cbff7c9ff6e5718d46ff64
Status: Downloaded newer image for ubuntu:latest
root@2946283327d9:/#
root@2946283327d9:/# echo docker
docker
root@2946283327d9:/# touch hello-docker
root@2946283327d9:/# ls
bin  boot  dev  etc  hello-docker  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
root@2946283327d9:/# exit
exit

C:\Windows\system32>docker ps -a
CONTAINER ID   IMAGE     COMMAND       CREATED         STATUS                     PORTS     NAMES
2946283327d9   ubuntu    "/bin/bash"   3 minutes ago   Exited (0) 8 seconds ago             pedantic_hermann

C:\Windows\system32>docker rm 2946283327d9
2946283327d9

C:\Windows\system32>docker run -d --name app-database -e MYSQL_ROOT_PASSWORD=P4sSw0rd0! mysql:latest
Unable to find image 'mysql:latest' locally
latest: Pulling from library/mysql
802b6dd0c6bd: Pull complete
69edacfaea72: Pull complete
5491a2a13e1b: Pull complete
8e3f19ed5e67: Pull complete
f74943462a4f: Pull complete
35300b480a58: Pull complete
8ec50bfa3b7e: Pull complete
1dced004aaec: Pull complete
e80b372994e5: Pull complete
4f23ccd26206: Pull complete
9c6d3f438d99: Download complete
b3e52f10da63: Download complete
Digest: sha256:c11782aa2a96624c1efc121768641d96954faa136d6aa82751b032d8c426ffbc
Status: Downloaded newer image for mysql:latest
ba6e89c312c29d0923337e5a9c0d00257f8980716ea0c5c4c18488cd8608f25a

C:\Windows\system32>docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                 NAMES
ba6e89c312c2   mysql:latest   "docker-entrypoint.s…"   2 minutes ago   Up 2 minutes   3306/tcp, 33060/tcp   app-database

C:\Windows\system32>docker run -d -p 8080:80 --name mynginx nginx
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
5431d0092ffd: Pull complete
5b4d6ff92fc4: Pull complete
13fd728be9eb: Pull complete
45381ecb0e2f: Pull complete
830625e1ac85: Pull complete
7f8b1a2b17d8: Pull complete
b4a248c845e5: Pull complete
cc5f57206478: Download complete
5e6b66b5e5f1: Download complete
Digest: sha256:5aca99593157f4ae539a5dec1092a0ad8762f8e2eb1789085a13a0f5622369f6
Status: Downloaded newer image for nginx:latest
21d751006dcc49941aee480ccdecf5369cf32193877bed5ee3391efb132c4003

C:\Users\ASUS>docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

C:\Users\ASUS>docker ps -a
CONTAINER ID   IMAGE          COMMAND                  CREATED        STATUS                            PORTS                  NAMES
21d751006dcc   nginx          "/docker-entrypoint.…"   17 hours ago   Exited (255) About a minute ago   0.0.0.0:8080->80/tcp   mynginx
ba6e89c312c2   mysql:latest   "docker-entrypoint.s…"   17 hours ago   Exited (255) About a minute ago   3306/tcp, 33060/tcp    app-database

C:\Users\ASUS>docker commit mynginx IMAGE_NAME
invalid reference format: repository name (library/IMAGE_NAME) must be lowercase

C:\Users\ASUS>docker commit mynginx image_name
sha256:a7a135f682aa246f1d18e30a9ae77ab56e4824a86ad3d1da54c1a69363966bde

C:\Users\ASUS>mkdir python-app

C:\Users\ASUS>cd python-app

C:\Users\ASUS\python-app>
C:\Users\ASUS\python-app>code .

C:\Users\ASUS\python-app>docker build -t my-python-app .
[+] Building 21.7s (9/9) FINISHED                                                                                                                                                             docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                                                                          0.1s
 => => transferring dockerfile: 124B                                                                                                                                                                          0.0s
 => [internal] load metadata for docker.io/library/python:3.9-slim                                                                                                                                            4.0s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                                                                 0.0s
 => [internal] load .dockerignore                                                                                                                                                                             0.1s
 => => transferring context: 2B                                                                                                                                                                               0.0s
 => [1/3] FROM docker.io/library/python:3.9-slim@sha256:2d97f6910b16bd338d3060f261f53f144965f755599aab1acda1e13cf1731b1b                                                                                     14.6s
 => => resolve docker.io/library/python:3.9-slim@sha256:2d97f6910b16bd338d3060f261f53f144965f755599aab1acda1e13cf1731b1b                                                                                      0.1s
 => => sha256:ea56f685404adf81680322f152d2cfec62115b30dda481c2c450078315beb508 251B / 251B                                                                                                                    0.2s
 => => sha256:fc74430849022d13b0d44b8969a953f842f59c6e9d1a0c2c83d710affa286c08 13.88MB / 13.88MB                                                                                                             13.2s
 => => sha256:b3ec39b36ae8c03a3e09854de4ec4aa08381dfed84a9daa075048c2e3df3881d 1.29MB / 1.29MB                                                                                                                1.9s
 => => sha256:38513bd7256313495cdd83b3b0915a633cfa475dc2a07072ab2c8d191020ca5d 29.78MB / 29.78MB                                                                                                             11.2s
 => => extracting sha256:38513bd7256313495cdd83b3b0915a633cfa475dc2a07072ab2c8d191020ca5d                                                                                                                     1.2s
 => => extracting sha256:b3ec39b36ae8c03a3e09854de4ec4aa08381dfed84a9daa075048c2e3df3881d                                                                                                                     0.2s
 => => extracting sha256:fc74430849022d13b0d44b8969a953f842f59c6e9d1a0c2c83d710affa286c08                                                                                                                     0.8s
 => => extracting sha256:ea56f685404adf81680322f152d2cfec62115b30dda481c2c450078315beb508                                                                                                                     0.1s
 => [internal] load build context                                                                                                                                                                             0.2s
 => => transferring context: 74B                                                                                                                                                                              0.0s
 => [2/3] WORKDIR /app                                                                                                                                                                                        1.2s
 => [3/3] COPY app.py .                                                                                                                                                                                       0.2s
 => exporting to image                                                                                                                                                                                        1.1s
 => => exporting layers                                                                                                                                                                                       0.5s
 => => exporting manifest sha256:d2ba498d6ec925732f86264572366d47e56e8c67e2d593449b0adfead59f21a3                                                                                                             0.1s
 => => exporting config sha256:ebaaab38b75f32c5b1ce083d33045e3931bf5c0ba3416b7b5422c5c337f349bd                                                                                                               0.1s
 => => exporting attestation manifest sha256:bf10524c7e62020dab88be9cdc6d06c7bad3f62bb60734f91cc8ce6fdbfea579                                                                                                 0.1s
 => => exporting manifest list sha256:b2fb6972e66aa54e5ee1bdd1e06ff9c2c6e14c0bff31302645d41f576af6c139                                                                                                        0.1s
 => => naming to docker.io/library/my-python-app:latest                                                                                                                                                       0.0s
 => => unpacking to docker.io/library/my-python-app:latest                                                                                                                                                    0.1s

C:\Users\ASUS\python-app>docker run my-python-app
Hello from Python inside Docker!

C:\Users\ASUS\python-app>docker build -t my-python-app-small .
[+] Building 12.8s (13/13) FINISHED                                                                                                                                                           docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                                                                          0.0s
 => => transferring dockerfile: 334B                                                                                                                                                                          0.0s
 => [internal] load metadata for docker.io/library/python:3.9-alpine                                                                                                                                          2.5s
 => [internal] load metadata for docker.io/library/python:3.9-slim                                                                                                                                            1.2s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                                                                 0.0s
 => [internal] load .dockerignore                                                                                                                                                                             0.1s
 => => transferring context: 2B                                                                                                                                                                               0.0s
 => [builder 1/3] FROM docker.io/library/python:3.9-slim@sha256:2d97f6910b16bd338d3060f261f53f144965f755599aab1acda1e13cf1731b1b                                                                              0.1s
 => => resolve docker.io/library/python:3.9-slim@sha256:2d97f6910b16bd338d3060f261f53f144965f755599aab1acda1e13cf1731b1b                                                                                      0.1s
 => [internal] load build context                                                                                                                                                                             0.1s
 => => transferring context: 27B                                                                                                                                                                              0.0s
 => [stage-2 1/3] FROM docker.io/library/python:3.9-alpine@sha256:c99b6eb43b3ac4d750db3d6e8b22268d5ea9a99deead7218ce3deda7f2ca029c                                                                            8.0s
 => => resolve docker.io/library/python:3.9-alpine@sha256:c99b6eb43b3ac4d750db3d6e8b22268d5ea9a99deead7218ce3deda7f2ca029c                                                                                    0.1s
 => => sha256:9806928fa0da94a3d2440c42430d7caa253e6f05e8669881cee924ceecabe3b3 247B / 247B                                                                                                                    0.6s
 => => sha256:27711589a568cd76752066b7f5d51377b4eb3d501cf866ff9a2933d7c3db806d 15.40MB / 15.40MB                                                                                                              6.5s
 => => sha256:c9008197b8dd9d9b4c7a87e38fa66c8bceb4f7d87df8e9061284b123459f9451 456.92kB / 456.92kB                                                                                                            1.4s
 => => sha256:2d35ebdb57d9971fea0cac1582aa78935adf8058b2cc32db163c98822e5dfa1b 3.80MB / 3.80MB                                                                                                                1.6s
 => => extracting sha256:2d35ebdb57d9971fea0cac1582aa78935adf8058b2cc32db163c98822e5dfa1b                                                                                                                     0.2s
 => => extracting sha256:c9008197b8dd9d9b4c7a87e38fa66c8bceb4f7d87df8e9061284b123459f9451                                                                                                                     0.3s
 => => extracting sha256:27711589a568cd76752066b7f5d51377b4eb3d501cf866ff9a2933d7c3db806d                                                                                                                     0.8s
 => => extracting sha256:9806928fa0da94a3d2440c42430d7caa253e6f05e8669881cee924ceecabe3b3                                                                                                                     0.0s
 => CACHED [builder 2/3] WORKDIR /app                                                                                                                                                                         0.0s
 => CACHED [builder 3/3] COPY app.py .                                                                                                                                                                        0.1s
 => [stage-2 2/3] WORKDIR /app                                                                                                                                                                                0.4s
 => [stage-2 3/3] COPY --from=builder /app/app.py .                                                                                                                                                           0.2s
 => exporting to image                                                                                                                                                                                        1.1s
 => => exporting layers                                                                                                                                                                                       0.5s
 => => exporting manifest sha256:9f9792f754cc3eb240372a8a2b2db552e4bc4965baf76582493dece8140bb503                                                                                                             0.1s
 => => exporting config sha256:a65d3dc6c00e36080a521c0ff3471144d11d6eca27525ae42a370c60d4394299                                                                                                               0.1s
 => => exporting attestation manifest sha256:50e7113bf1d9239a985a0a1faf8e02a4dc8da62fda2576c2f37b7135af1875e0                                                                                                 0.1s
 => => exporting manifest list sha256:aecafc00b44132c43dd156390d0c1d076d44be32286fd342f645b4b62187c1fd                                                                                                        0.1s
 => => naming to docker.io/library/my-python-app-small:latest                                                                                                                                                 0.0s
 => => unpacking to docker.io/library/my-python-app-small:latest                                                                                                                                              0.1s

C:\Users\ASUS\python-app>docker run my-python-app-small
Hello from Python inside Docker!

C:\Users\ASUS\python-app>docker login
Authenticating with existing credentials... [Username: samaasameh]

i Info → To login with a different account, run 'docker logout' followed by 'docker login'


Login Succeeded

C:\Users\ASUS\python-app>docker tag my-python-app-small username/python-app:latest

C:\Users\ASUS\python-app>docker tag my-python-app-small samaasameh/python-app:latest

C:\Users\ASUS\python-app>docker push samaasameh/python-app:latesth
The push refers to repository [docker.io/samaasameh/python-app]
tag does not exist: samaasameh/python-app:latesth

C:\Users\ASUS\python-app>docker push samaasameh/python-app:latest
The push refers to repository [docker.io/samaasameh/python-app]
2d35ebdb57d9: Pushed
9806928fa0da: Pushed
27711589a568: Pushed
fbb518d6e852: Pushed
94bce08f80a9: Pushed
f36a8334415d: Pushed
c9008197b8dd: Pushed
latest: digest: sha256:aecafc00b44132c43dd156390d0c1d076d44be32286fd342f645b4b62187c1fd size: 856

C:\Users\ASUS\python-app>explorer .