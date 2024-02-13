-- Tabela Curso
CREATE TABLE Curso (
    id BIGINT PRIMARY KEY,
    nome VARCHAR(255) UNIQUE,
    descricao VARCHAR(255),
    email VARCHAR(255),
    horas_acs INT,
    coordenacao VARCHAR(255)
);

-- Tabela Professor
CREATE TABLE Professor (
    id BIGINT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    area_formacao VARCHAR(255)
);

-- Tabela Professor_Curso (Tabela de associação para a relação Many-to-Many entre Professor e Curso)
CREATE TABLE Professor_Curso (
    professor_id BIGINT,
    curso_id BIGINT,
    PRIMARY KEY (professor_id, curso_id),
    FOREIGN KEY (professor_id) REFERENCES Professor(id),
    FOREIGN KEY (curso_id) REFERENCES Curso(id)
);

-- Tabela Periodo
CREATE TABLE Periodo (
    id BIGINT PRIMARY KEY,
    nome VARCHAR(255),
    curso_id BIGINT,
    FOREIGN KEY (curso_id) REFERENCES Curso(id)
);

-- Tabela Disciplina
CREATE TABLE Disciplina (
    id BIGINT PRIMARY KEY,
    nome VARCHAR(255),
    carga_horaria_total INT,
    conteudo_programatico VARCHAR(255),
    material_apoio VARCHAR(255),
    periodo_id BIGINT,
    FOREIGN KEY (periodo_id) REFERENCES Periodo(id)
);
