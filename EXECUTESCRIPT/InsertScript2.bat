cd C:\Projects\Rogers\omniture\nifi_omniture\nifi\EXECUTESCRIPT 
mysql -h localhost -u root -proot -e "set @mydate='%1'; set @myfile= '%2'; source insertscript.sql;"