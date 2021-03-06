create database hygeia4;
grant all privileges on hygeia4.* to 'hygeiadb'@'localhost';
use hygeia4;
create table users (
    uid integer primary key auto_increment, 
    username text not null, 
    hpwd text not null, 
    email text not null, 
    height real, 
    weight real);
create table inventory (
    iid integer primary key auto_increment, 
    uid integer not null, 
    fid integer not null, 
    count real,
    foreign key (uid) references users(uid) on delete cascade);
create table foods (
    fid integer primary key auto_increment, 
    uid integer not null, 
    name text not null, 
    weight real, 
    factor real, 
    calories real, 
    carbohydrates real, 
    protein real, 
    fat real,
    foreign key (uid) references users(uid) on delete cascade);
create table components (
    cid integer primary key auto_increment, 
    mid integer not null, 
    fid integer not null, 
    count real,
    foreign key (fid) references foods(fid) on delete cascade);
create table history (
    hid integer primary key auto_increment, 
    mid integer not null, 
    uid integer not null, 
    occurence timestamp,
    foreign key (uid) references users(uid) on delete cascade);
create table favorites (
    fid integer primary key auto_increment, 
    mid integer not null, 
    uid integer not null,
    foreign key (uid) references users(uid) on delete cascade);
create table meals (
    mid integer primary key auto_increment, 
    uid integer not null, 
    name text, 
    calories real, 
    carbohydrates real, 
    protein real, 
    fat real,
    foreign key (uid) references users(uid) on delete cascade);
create table admins (
    aid integer primary key auto_increment, 
    email text not null, 
    hpwd text not null);

alter table inventory add foreign key (fid) references foods(fid) on delete cascade;
alter table components add foreign key (mid) references meals(mid) on delete cascade;
alter table history add foreign key (mid) references meals(mid) on delete cascade;
alter table favorites add foreign key (mid) references meals(mid) on delete cascade;

insert into users values(0, "systemwide", "nologon", "bounce@hygeia", 1, 1);
update users set uid=0 where uid=1;

