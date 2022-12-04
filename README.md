# Local DB Dump

> 로컬에 DB 덤프 받는 과정이 너무 귀찮다...<br> 데이터 베이스도 설치해야 하고..

#### 1. [Postgresql](http://naver.com)
...

### Dependency
* [docker](https://www.docker.com/)
* [docker-compose](https://github.com/docker/compose)

## Run

#### step 1
`./postgres/migration.sh`의 접속 정보 변경
```shell
HOST={your target db host} #port는 생략
DATABASE={your target db database name}
USERNAME={your target db username}
PASSWORD={your target db password}
```
#### step 2
just run..
```shell
make dump-postgres
```
