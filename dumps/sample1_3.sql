use hygeia3;
insert into users (username, hpwd, email, height, weight) values ('alex', '927a69595dd760ddd3642488d048b1de', 'alex@hygeia', 72, 170);
insert into foods (uid, name, weight, factor, calories, carbohydrates, protein, fat) values (0, 'banana', 7, 1, 10, 10, 10, 10), (0, 'apple', 5, 1, 8, 8, 8, 8), (0, 'steak, burnt', 230, 1, 500, 500, 500, 500);
insert into meals (uid, name, calories, carbohydrates, protein, fat) values (0, 'apple steak', 508, 508, 508, 508);
insert into components (mid, fid, count) values (1, 2, 1), (1, 3, 1);
insert into favorites (mid, uid) values (1, 1);
insert into inventory (uid, fid, count) values (1, 1, 10), (1, 1, 6), (1, 1, 2);
