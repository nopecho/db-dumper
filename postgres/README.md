# Postgresql Dump

* `postgresql` dump 


### 기본 명령어
`pg_dump [옵션]... [DB이름]`

### 연결 옵션
```
  -d, --dbname=DBNAME      덤프할 데이터베이스
  -h, --host=HOSTNAME      접속할 데이터베이스 서버 또는 소켓 디렉터리
  -p, --port=PORT          데이터베이스 서버의 포트 번호
  -U, --username=NAME      연결할 데이터베이스 사용자
  -w, --no-password        암호 프롬프트 표시 안 함
  -W, --password           암호 입력 프롬프트 보임(자동으로 처리함)
  --role=ROLENAME          덤프 전에 SET ROLE 수행
```

### 일반 옵션

```
  -f, --file=파일이름          출력 파일 또는 디렉터리 이름
  -F, --format=c|d|t|p         출력 파일 형식(사용자 지정, 디렉터리, tar,
                               일반 텍스트(초기값))
  -j, --jobs=개수              덤프 작업을 병렬 처리 함
  -v, --verbose                작업 내역을 자세히 봄
  -V, --version                버전 정보를 보여주고 마침
  -Z, --compress=0-9           출력 자료 압축 수위
  --lock-wait-timeout=초       테이블 잠금 시 지정한 초만큼 기다린 후 실패
  --no-sync                    fsync 작업 생략
  -?, --help                   이 도움말을 보여주고 마침  
```

### 출력 옵션

```
  -a, --data-only              스키마 빼고 자료만 덤프
  -b, --blobs                  Large Object들도 함께 덤프함
  -B, --no-blobs               Large Object들을 제외하고 덤프함
  -c, --clean                  다시 만들기 전에 데이터베이스 개체 지우기(삭제)
  -C, --create                 데이터베이스 만드는 명령구문도 포함시킴
  -E, --encoding=인코딩        지정한 인코딩으로 자료를 덤프 함
  -n, --schema=PATTERN         지정한 SCHEMA들 자료만 덤프
  -N, --exclude-schema=PATTERN 지정한 SCHEMA들만 빼고 모두 덤프
  -O, --no-owner               일반 텍스트 형식에서
                               개체 소유권 복원 건너뛰기
  -s, --schema-only            자료구조(스키마)만 덤프
  -S, --superuser=NAME         일반 텍스트 형식에서 사용할 슈퍼유저 사용자 이름
  -t, --table=PATTERN          지정한 이름의 테이블들만 덤프
  -T, --exclude-table=PATTERN  지정한 테이블들만 빼고 덤프
  -x, --no-privileges          접근 권한 (grant/revoke) 정보는 덤프 안 함
  --binary-upgrade             업그레이드 유틸리티 전용
  --column-inserts             칼럼 이름과 함께 INSERT 명령으로 자료 덤프
  --disable-dollar-quoting     $ 인용 구문 사용안함, SQL 표준 따옴표 사용
  --disable-triggers           자료만 복원할 때 트리거 사용을 안함
  --enable-row-security        로우 보안 활성화 (현재 작업자가 접근할 수
                               있는 자료만 덤프 함)
  --exclude-table-data=PATTERN 해당 테이블 자료는 덤프 안함
  --extra-float-digits=NUM     기본 extra_float_digits 값 바꿈
  --if-exists                  객체 삭제 시 IF EXISTS 구문 사용
  --include-foreign-data=패턴
                               지정한 패턴과 일치하는 외부 서버의 외부
                               테이블 자료를 포함
  --inserts                    COPY 대신 INSERT 명령으로 자료 덤프
  --load-via-partition-root    상위 테이블을 통해 하위 테이블을 로드함
  --no-comments                코멘트는 덤프 안함
  --no-publications            발행 정보는 덤프하지 않음
  --no-security-labels         보안 라벨 할당을 덤프 하지 않음
  --no-subscriptions           구독 정보는 덤프하지 않음
  --no-synchronized-snapshots  병렬 작업에서 스냅샷 일관성을 맞추지 않음
  --no-tablespaces             테이블스페이스 할당을 덤프하지 않음
  --no-unlogged-table-data     언로그드 테이블 자료는 덤프하지 않음
  --on-conflict-do-nothing     INSERT 구문에 ON CONFLICT DO NOTHING 옵션 추가
  --quote-all-identifiers      예약어가 아니여도 모든 식별자는 따옴표를 씀
  --rows-per-insert=NROWS      한 INSERT 명령으로 입력할 로우 수; --inserts
                               옵션을 사용한 것으로 가정 함
  --section=SECTION            해당 섹션(pre-data, data, post-data)만 덤프
  --serializable-deferrable    자료 정합성을 보장하기 위해 덤프 작업을
                               직렬화 가능한 트랜잭션으로 처리 함
  --snapshot=SNAPSHOT          지정한 스냅샷을 덤프 함
  --strict-names               테이블이나 스키마를 지정했을 때 그 패턴에 맞는
                               객체가 적어도 하나 이상 있어야 함
  --use-set-session-authorization
                               SET SESSION AUTHORIZATION 명령을 ALTER OWNER 명령
                               대신 사용하여 소유권 설정

```