#!/bin/sh
cat > ~/.snowsql/config << EOF
[connections]
username = $SNOWSQL_USERNAME
password = "$SNOWSQL_PASSWORD"
accountname = $SNOWSQL_ACCOUNTNAME
region = $SNOWSQL_REGION
rolename = $SNOWSQL_ROLENAME
warehouse = $SNOWSQL_WAREHOUSE
dbname = $SNOWSQL_DBNAME
EOF