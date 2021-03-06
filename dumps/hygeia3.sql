create database hygeia3;
grant all privileges on hygeia3.* to 'hygeiadb'@'localhost';
use hygeia3;
create table users (uid integer primary key auto_increment, username text, hpwd text, email text, height real, weight real);
create table inventory (iid integer primary key auto_increment, uid integer, fid integer, count real);
create table foods (fid integer primary key auto_increment, uid integer, name text, weight real, factor real, calories real, carbohydrates real, protein real, fat real);
create table components (cid integer primary key auto_increment, mid integer, fid integer, count real);
create table history (hid integer primary key auto_increment, mid integer, uid integer, occurence timestamp);
create table favorites (fid integer primary key auto_increment, mid integer, uid integer);
create table meals (mid integer primary key auto_increment, uid integer, name text, calories real, carbohydrates real, protein real, fat real);
create table admins (aid integer primary key auto_increment, email text, hpwd text);



