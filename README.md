# rails-template

## Overview

- Rails アプリケーションの Docker コンテナ
  - Ruby 3.1
  - Rails 7.0
  - MySQL 8.0
  - Nginx 1.21.6

## Tips

### 起動

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
docker-compose exec db bash -c 'mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD}'
```

<!-- - System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ... -->
