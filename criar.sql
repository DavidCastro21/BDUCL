<<<<<<< HEAD
PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL


-- Table Equipa
DROP TABLE IF EXISTS Equipa;
CREATE TABLE Equipa(
    id                  INTEGER PRIMARY KEY  NOT NULL,
    nome                TEXT NOT NULL UNIQUE,
    país                TEXT NOT NULL,
    montante_arrecadado INTEGER DEFAULT 17.74,
    pontos              INTEGER DEFAULT 0,
    idEstadio           INTEGER REFERENCES Estadio (id)
);

--Table Jogador 
DROP TABLE IF EXISTS Jogador;
CREATE TABLE Jogador(
    id                  INTEGER PRIMARY KEY NOT NULL,
    nome                TEXT NOT NULL UNIQUE,
    número              INTEGER NOT NULL,
    idEquipa            INTEGER REFERENCES Equipa (id) NOT NULL
);

--Table Fase
DROP TABLE IF EXISTS Fase;
CREATE TABLE Fase(
    id                  INTEGER PRIMARY KEY NOT NULL,
    nome                TEXT NOT NULL UNIQUE
);

--Table Jornada
DROP TABLE IF EXISTS Jornada;
CREATE TABLE Jornada(
    id                  INTEGER PRIMARY KEY NOT NULL,
    numero              INTEGER NOT NULL,
    idFase              INTEGER REFERENCES Fase(id) NOT NULL
);
--Table Jogo
DROP TABLE IF EXISTS Jogo;  
CREATE TABLE Jogo(
    id                  INTEGER PRIMARY KEY NOT NULL,
    data                DATE NOT NULL,
    idJornada           INTEGER REFERENCES Jornada (id) NOT NULL,
    idVisitada          INTEGER REFERENCES Equipa(id) NOT NULL,
    idVisitante         INTEGER REFERENCES Equipa(id) NOT NULL,
    idEstadio           INTEGER REFERENCES Estadio(id) NOT NULL
);

--Table Estadio
DROP TABLE IF EXISTS Estadio;
CREATE TABLE Estadio(
    id                  INTEGER PRIMARY KEY NOT NULL,
    nome                TEXT NOT NULL UNIQUE
);

--Table EventoGolo
DROP TABLE IF EXISTS EventoGolo;
CREATE TABLE EventoGolo(
    idEvento            INTEGER REFERENCES Evento (id) NOT NULL,
    idJogador           INTEGER REFERENCES Jogador (id) NOT NULL,
    favor               INTEGER REFERENCES Equipa(id) NOT NULL,
    contra              INTEGER REFERENCES Equipa(id) NOT NULL,
    PRIMARY KEY(idEvento)
);

--Table EventoSubstituicao
DROP TABLE IF EXISTS EventoSubstituicao;
CREATE TABLE EventoSubstituicao(
    idEvento            INTEGER REFERENCES Evento (id) NOT NULL,
    entra               INTEGER REFERENCES Jogador (id) NOT NULL,
    sai                 INTEGER REFERENCES Jogador  (id) NOT NULL,
    PRIMARY KEY(idEvento)
);

--Table EventoCartao
DROP TABLE IF EXISTS EventoCartao;
CREATE TABLE EventoCartao(
    idEvento            INTEGER REFERENCES Evento (id) NOT NULL,
    cor                 TEXT NOT NULL,
    idJogador           INTEGER REFERENCES Jogador (id) NOT NULL,
    PRIMARY KEY(idEvento)
);

--Table EventoOutro
DROP TABLE IF EXISTS EventoOutro;
CREATE TABLE EventoOutro(
    idEvento            INTEGER REFERENCES Evento (id) NOT NULL,
    idJogador           INTEGER REFERENCES Jogador (id) NOT NULL,
    descricao           TEXT NOT NULL,
    PRIMARY KEY(idEvento)
);
--Table Evento
DROP TABLE IF EXISTS Evento;
CREATE TABLE Evento(
    id                  INTEGER PRIMARY KEY NOT NULL,
    minuto              TEXT NOT NULL,
    idJogo              INTEGER REFERENCES Jogo (id)  NOT NULL
);
=======
PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL



-- Table Equipa
DROP TABLE IF EXISTS Equipa;
CREATE TABLE Equipa{
    id    INTEGER PRIMARY KEY;
    nome        STRING NOT NULL;
    país        STRING NOT NULL;
    montante_arrecadado INTEGER;
    pontos              INTEGER;
    idEstadio INTEGER REFERENCES Estadio (id);
}

--Table Jogador 
DROP TABLE IF EXISTS Jogador;
CREATE TABLE Jogador{
    id    INTEGER PRIMARY KEY;
    nome        STRING NOT NULL;
    número        INTEGER NOT NULL;
    idEquipa INTEGER REFERENCES Equipa (id);
}

--Table Fase
DROP TABLE IF EXISTS Fase;
CREATE TABLE Fase{
    id    INTEGER PRIMARY KEY;
    nome STRING NOT NULL;
}

--Table Jornada
DROP TABLE IF EXISTS Jornada;
CREATE TABLE Jornada{
    id    INTEGER PRIMARY KEY;
    numero              INTEGER NOT NULL;
}
--Table Jogo
DROP TABLE IF EXISTS Jogo;
CREATE TABLE Jogo{
    id    INTEGER PRIMARY KEY;
    data  DATE;
    hora INTEGER CHECK(hora >=0 AND hora <=24);
    idJornada INTEGER REFERENCES Jornada (id);
}

--Table Estadio
DROP TABLE IF EXISTS Estadio;
CREATE TABLE Estadio{
    id INTEGER PRIMARY KEY;
    nome STRING NOT NULL;
}

--Table EventoGolo
DROP TABLE IF EXISTS EventoGolo;
CREATE TABLE EventoGolo{
    idEvento INTEGER REFERENCES Evento (id);
    idJogador INTEGER REFERENCES Jogador (id);
    favor INTEGER REFERENCES Equipa(id);
    contra INTEGER REFERENCES Equipa(id);
    PRIMARY KEY(idEvento);
}

--Table EventoSubstituicao
DROP TABLE IF EXISTS EventoSubstituicao;
CREATE TABLE EventoSubstituicao{
    idEvento INTEGER REFERENCES Evento (id);
    entra INTEGER REFERENCES Jogador (id);
    sai INTEGER REFERENCES Jogador  (id);
    PRIMARY KEY(idEvento);
}

--Table EventoCartao
DROP TABLE IF EXISTS EventoCartao;
CREATE TABLE EventoCartao{
    idEvento INTEGER REFERENCES Evento (id);
    cor STRING NOT NULL;
    idJogador INTEGER REFERENCES Jogador (id);
    PRIMARY KEY(idEvento);
}

--Table EventoOutro
DROP TABLE IF EXISTS EventoOutro;
CREATE TABLE EventoOutro{
    idEvento INTEGER REFERENCES Evento (id);
    idJogador INTEGER REFERENCES Jogador (id);
    descricao STRING NOT NULL;
    PRIMARY KEY(idEvento);
}
--Table Evento
DROP TABLE IF EXISTS Evento;
CREATE TABLE Evento{
    id INTEGER PRIMARY KEY;
    minuto STRING NOT NULL;
    idJogo INTEGER REFERENCES Jogo (id);
}
>>>>>>> 9a5669ba688320e010cac9cdc19c2b53bf4af8bf
