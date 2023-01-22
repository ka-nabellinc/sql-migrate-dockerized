#!/bin/ash

cat >./dbconfig.yml <<EOL
${DB_ENVIRONMENT}:
  dialect: ${DB_DIALECT}
  datasource: ${DB_DATASOURCE}
  dir: ${DB_MIGRATIONS_DIR}
EOL
