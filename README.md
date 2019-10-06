# pdev Environment Using Docker

## Installing & Setup

* Get Docker CE for CentOS
```bash
# https://docs.docker.com/install/linux/docker-ce/centos/
$ su -
$ yum install -y yum-utils device-mapper-persistent-data lvm2
$ yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# docker-ce-18.09.3 버전을 직접 설치할 경우
# yum install -y docker-ce-18.09.3 docker-ce-cli-18.09.3 containerd.io
# docker-ce 최신 버전으로 설치할 경우
$ yum install -y docker-ce docker-ce-cli containerd.io
$ systemctl start docker
$ systemctl enable docker
```

* Get Docker Compose for CentOS
```bash
# https://docs.docker.com/compose/install/
$ su -
$ curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
```

* DYM5_0 Setup for SE(Systems Engineering)
```bash
$ su -
$ git clone -b local http://dymdev.saramin.co.kr:9000/kimytsc/DYM_ENV_DOCKER ~/docker
$ cd ~/docker && docker-compose build && docker-compose up -d --force-recreate
# 
# 유저 생성
$ useradd {USERNAME} -g docker
# 생성한 유저의 비밀번호 설정
$ passwd {USERNAME}
# docker에서 각 유저 홈경로의 www에 접근하기 위한 권한 추가
$ chmod 701 /home/{USERNAME}
```

* DYM5_0 Setup for Developer
```bash
# docker exec -it DYM5_0 /bin/bash
$ git clone -b dev http://sri-git.saraminhr.co.kr/dym5/dym5.git ~/www/DYM5_0
$ cp ~/www/DYM5_0/.env.docker ~/www/DYM5_0/.env
$ chmod 777 -R ~/www/DYM5_0/storage ~/www/DYM5_0/bootstrap/cache
$ cd ~/www/DYM5_0 && docker exec DYM5_0 /bin/bash ./composer --path=$(pwd)
$ 
$ git clone -b dev http://dymdev.saramin.co.kr:9000/kimytsc/DYM_mobile.git ~/www/DYMMobile
# URL ex) https://test5.kimytsc.dym5.pdev.saramin.co.kr/main/index
```