CREATE USER IF NOT EXISTS 'gunasegarran'@'%' IDENTIFIED BY 'gunasegarran';
ALTER USER 'gunasegarran'@'%' IDENTIFIED WITH caching_sha2_password BY 'gunasegarran';
GRANT ALL ON *.* TO 'gunasegarran'@'%';