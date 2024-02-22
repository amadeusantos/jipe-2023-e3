DROP TABLE Periodo CASCADE;

DROP TABLE Disciplina CASCADE;

CREATE TABLE Disciplina(
    id BIGINT PRIMARY KEY,
    nome VARCHAR(255),
    carga_horaria_total INT,
    conteudo_programatico VARCHAR(255),
    material_apoio VARCHAR(255),
    periodo_id INT,
    curso_id BIGINT,
    FOREIGN KEY (curso_id) REFERENCES Curso(id)
);
