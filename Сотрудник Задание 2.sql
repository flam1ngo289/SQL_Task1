create table if not exists Сотрудник (
 id INT primary key,
 Имя VARCHAR(60) not null,
 Отдел VARCHAR(60) not null,
 Начальник INT not null references Сотрудник(id)
);