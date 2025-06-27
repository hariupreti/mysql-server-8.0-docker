-- Give userone limited permissions
GRANT SELECT, INSERT, UPDATE, DELETE ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER_ONE}'@'%';

-- Give adminuser full privileges on the database
GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_ADMIN_USER}'@'%';

-- Apply the changes
FLUSH PRIVILEGES;
