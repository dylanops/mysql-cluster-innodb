This show case how to run MySQL cluster with MySQL Router

```bash
     docker compose up

```

# Go to MySQL Shell Tool
```bash
docker compose run mysqlsh bash

```

# Connect to MySQL cluster

### Symfony

DATABASE_URL="mysql://root:123456@127.0.0.1:6446/app?serverVersion=8.0.37&charset=utf8mb4"
