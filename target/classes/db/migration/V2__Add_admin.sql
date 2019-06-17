insert into usr (id, username, password, active, lastname, firstname, date,rabat, userdate )
    values (1, 'admin', '123', true, 'admin','firstname','date','date','10-10-2010');

insert into user_role (user_id, roles)
    values (1, 'USER'), (1, 'ADMIN');