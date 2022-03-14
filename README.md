# rails-template

## Overview

- Rails アプリケーションを中心とした Docker コンテナセット
  - Ruby 3.1
  - Rails 7.0
  - MySQL(for app) 8.0
  - Nginx 1.21.6
  - Fluentd 1.14
  - MySQL(for log) 8.0

## Fluentd

- Nginx のアクセスログをログ保管用 MySQL コンテナに保存する
- ログフォーマットは LTSV

## Tips

### Rails アプリ起動

```bash
$ docker-compose up -d
```

### アクセス

http://localhost

### コンテナに入る

```bash
$ docker-compose exec [コンテナ名] bash
```

### MySQL 接続

```bash
# rootユーザー
$ docker-compose exec db bash -c 'mysql -u root -p${MYSQL_ROOT_PASSWORD}'
# developmentユーザー
$ docker-compose exec db bash -c 'mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD}'
```

<!-- - System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ... -->
