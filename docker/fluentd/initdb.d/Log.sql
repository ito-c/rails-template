DROP SCHEMA IF EXISTS log;
CREATE SCHEMA log;
USE log;

DROP TABLE IF EXISTS nginx_access_log;

CREATE TABLE nginx_access_log
(
  id                      INT AUTO_INCREMENT PRIMARY KEY,
  time                    DATETIME,
  remote_addr             VARCHAR(200),
  status                  INT,
  request_method          VARCHAR(10),
  request_uri             TEXT(3000),
  request_length          INT,
  https                   VARCHAR(10),
  uri                     TEXT(3000),
  query_string            TEXT(3000),
  bytes_sent              INT,
  body_bytes_sent         INT,
  http_referer            TEXT(3000),
  useragent               TEXT(500),
  forwardedfor            TEXT(500),
  request_time            VARCHAR(20),
  upstream_addr           VARCHAR(200),
  upstream_response_time  VARCHAR(20),
  upstream_cache_status   VARCHAR(20)
);
