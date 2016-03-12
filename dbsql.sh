mysql -u root --password="" << EOF

create database oozie default character set utf8;
create database hive default character set utf8;
create database cm default character set utf8;
create database rman default character set utf8;


grant all privileges on oozie.* to 'oozie'@'localhost' identified by 'oozie';
grant all privileges on hive.* to 'hive'@'localhost' identified by 'hive';
grant all privileges on rman.* to 'rman'@'localhost' identified by 'rman'; 
grant all privileges on cm.* to 'cm'@'localhost' identified by 'cm'; 
grant all privileges on oozie.* to 'oozie'@'%' identified by 'oozie';
grant all privileges on hive.* to 'hive'@'%' identified by 'hive';
grant all privileges on rman.* to 'rman'@'%' identified by 'rman'; 
grant all privileges on cm.* to 'cm'@'%' identified by 'cm'; 

EOF
