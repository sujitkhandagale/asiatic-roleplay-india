-- Create master user
CREATE USER 'master'@'%' IDENTIFIED BY 'masterpassword';

-- Grant all privileges to the master user
GRANT ALL PRIVILEGES ON *.* TO 'master'@'%';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;
