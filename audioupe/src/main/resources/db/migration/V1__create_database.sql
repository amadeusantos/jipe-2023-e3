CREATE TABLE IF NOT EXISTS course
(
    id                    BIGINT  NOT NULL,
    name                  VARCHAR(255),
    email                 VARCHAR(255),
    workload              INTEGER NOT NULL,
    degree_type           VARCHAR(255),
    extension_activities  INTEGER NOT NULL,
    additional_activities INTEGER NOT NULL,
    periods               INTEGER NOT NULL,
    annual_vacancies      INTEGER NOT NULL,
    modality              VARCHAR(255),
    shift                 VARCHAR(255),
    entries               VARCHAR(255),
    objectives            TEXT,
    undergraduate_profile TEXT,
    skills                TEXT,
    internship            TEXT,
    final_paper           TEXT,
    coordinator_id        BIGINT,
    CONSTRAINT pk_course PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS course_disciplines
(
    course_id      BIGINT NOT NULL,
    disciplines_id BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS course_professor
(
    course_id    BIGINT NOT NULL,
    professor_id BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS discipline
(
    id                   BIGINT  NOT NULL,
    name                 VARCHAR(255),
    code                 VARCHAR(255),
    period INTEGER NOT NULL,
    theoretical_workload INTEGER NOT NULL,
    practical_workload   INTEGER NOT NULL,
    program              TEXT,
    general_objective    TEXT,
    specific_objective   TEXT,
    content_program      TEXT,
    bibliography         TEXT,
    course_id            BIGINT,
    CONSTRAINT pk_discipline PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS professor
(
    id                 BIGINT NOT NULL,
    name               VARCHAR(255),
    email              VARCHAR(255),
    degree             VARCHAR(255),
    field              VARCHAR(255),
    areas_of_expertise VARCHAR(255),
    CONSTRAINT pk_professor PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS professor_courses
(
    professor_id BIGINT NOT NULL,
    courses_id   BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS faq
(
    id       BIGINT NOT NULL,
    nome     TEXT,
    resposta TEXT,
    CONSTRAINT pk_faq PRIMARY KEY (id)
);
