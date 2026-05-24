Question 1: What is the difference between CMD and ENTRYPOINT?
CMD: Sets a default command for the container.
It can be easily overridden from the command line when running the container (using docker run <image> <new_command>).

ENTRYPOINT: Sets the main executable for the container.
It is intended to run as a permanent command, and any text added after docker run will be treated as arguments passed to this command, not as an override.
----------------------------------------------
Question 2: What is the difference between COPY and ADD?
COPY: A basic command that copies files and directories from the host machine into the container's filesystem. It is preferred for security and simplicity.

ADD: Does everything COPY does, but with extra features: it can download files directly from remote URLs and automatically unpack compressed archive files (like .tar.gz) into the container.
----------------
# DevOps Lab 1: Commands & Answers Report
**Student Name:** Samaa Sameh  

---

## Problem 1
**Question:** How to verify WSL and Docker installation?
**Commands:**
```cmd
C:\Windows\system32>wsl --update

C:\Windows\system32>docker --version
-------------------------------
## Problem 2
Question: How to run, check status, restart, and remove Hello-World and Ubuntu containers?
Commands:
# Running Hello-World
C:\Windows\system32>docker run hello-world

# Checking all containers status
C:\Windows\system32>docker ps -a

# Restarting the container (after handling typos)
C:\Windows\system32>docker start c473d63692d9

# Removing Hello-World container
C:\Windows\system32>docker rm c473d63692d9

# Running Interactive Ubuntu container
C:\Windows\system32>docker run -it ubuntu

# Inside Ubuntu terminal
root@2946283327d9:/# echo docker
root@2946283327d9:/# touch hello-docker
root@2946283327d9:/# ls
root@2946283327d9:/# exit

# Removing Ubuntu container
C:\Windows\system32>docker rm 2946283327d9
-----------------------------------------
## Problem 3
Question: How to run containers in detached mode with port mapping, and commit changes to a new image?
Commands:
# Running MySQL database in background
C:\Windows\system32>docker run -d --name app-database -e MYSQL_ROOT_PASSWORD=P4sSw0rd0! mysql:latest

# Running Nginx with port mapping 8080:80
C:\Windows\system32>docker run -d -p 8080:80 --name mynginx nginx

# Checking running containers
C:\Users\ASUS>docker ps

# Committing the container to a new local image
C:\Users\ASUS>docker commit mynginx image_name
-----------------------------------------------------------------------------------------------------------
## Problem 4
Question: How to create a directory for a custom Python app and build its standard image?
Commands:
# Creating and entering the directory
C:\Users\ASUS>mkdir python-app
C:\Users\ASUS>cd python-app

# Opening VS Code to write the Dockerfile
C:\Users\ASUS\python-app>code .

# Building the standard Python image
C:\Users\ASUS\python-app>docker build -t my-python-app .

# Running the standard Python image
C:\Users\ASUS\python-app>docker run my-python-app
-----------------------------------------------------------------------------------------------------------------
## Problem 5
Question: How to optimize the image size using Multi-stage build and push it to Docker Hub?
Commands:
# Building the optimized small image (Multi-stage)
C:\Users\ASUS\python-app>docker build -t my-python-app-small .

# Running the optimized small image
C:\Users\ASUS\python-app>docker run my-python-app-small

# Logging into Docker Hub
C:\Users\ASUS\python-app>docker login

# Tagging the optimized image with the correct username
C:\Users\ASUS\python-app>docker tag my-python-app-small samaasameh/python-app:latest

# Pushing the final image to Docker Hub (after fixing the typo)
C:\Users\ASUS\python-app>docker push samaasameh/python-app:latest