CREATE TABLE if not exists Жанры (
    id INT PRIMARY KEY,
    Название VARCHAR(60) NOT NULL
);

CREATE TABLE if not exists Исполнители (
    id SERIAL PRIMARY KEY,
    Псевдоним VARCHAR(60) NOT null,
    Жанр VARCHAR(60) not null
);

CREATE TABLE if not exists Исполнители_Жанры (
    Исполнитель_id INT NOT null references Исполнители(id),
    Жанр_id INT NOT null references Жанры(id)
);

CREATE TABLE if not exists Альбомы (
    id INT PRIMARY KEY,
    Название VARCHAR(60) NOT NULL,
    Год_выпуска date NOT null,
    Исполнитель VARCHAR(60) not null
);

CREATE TABLE if not exists Исполнители_Альбомы (
    Исполнитель_id INT NOT null references Исполнители(id),
    Альбом_id INT NOT null references Альбомы(id)
);

CREATE TABLE if not exists Треки (
    id INT PRIMARY KEY,
    Название VARCHAR(60) NOT NULL,
    Длительность TIME NOT NULL,
    Альбом INT NOT null references Aльбомы(id)
);

CREATE table if not exists Сборники (
    id INT PRIMARY KEY,
    Название VARCHAR(60) NOT NULL,
    Год_выпуска INT NOT NULL
);

CREATE table if not exists Сборники_Треки (
    Сборник_id INT NOT null references Сборники(id),
    Трек_id INT NOT null references Треки(id)
);
