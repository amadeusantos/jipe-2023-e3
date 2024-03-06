INSERT INTO professor(id, areas_of_expertise, degree, email, field, name)
VALUES
    (1, 'Engenharia de Software, Engenharia de Software Empírica, Programação Orientada a Objetos e Programação Orientada a Aspectos.', 'MESTRE', 'adauto.filho@upe.br', 'Ciências da Computação', 'Adauto Trigueiro de Almeida Filho'),
    (2, 'Engenharia de Software.', 'DOUTOR', 'aeda.sousa@upe.br', 'Engenharia Elétrica', 'Aêda Monalliza Cunha de Sousa'),
    (3, 'Sistemas de Informação e Engenharia de Computação.', 'DOUTOR', 'ariane.rodrigues@upe.br', 'Ciências da Computação', 'Ariane Nunes Rodrigues'),
    (4, 'Educação, Sistemas de Computação, Metodologia e Técnicas da Computação, Microeletrônica, Engenharia Elétrica e Física.', 'DOUTOR', 'brunno.souza@upe.br', 'Ciências da Computação', 'Brunno Wagner Lemos De Souza'),
    (5, 'Segurança da Informação, Redes de Computadores e Administração de Sistemas.', 'MESTRE', 'cleiton.martins@upe.br', 'Ciências da Computação', 'Cleiton Soares Martins'),
    (6, 'Formação de Professores, Tecnologias na Educação, Ensino de Computação e Engenharia de Requisitos.', 'MESTRE', 'cleverton.silva@upe.br', 'Engenharia da Computação', 'Cleverton Anderson Duarte Silva'),
    (7, 'Engenharia de Software e Linguagens de Programação.', 'DOUTOR', 'emanoel.barreiros@upe.br', 'Ciências da Computação', 'Emanoel Francisco Sposito Barreiros'),
    (8, 'Ciência da Computação, Engenharia de Software e Arquitetura de Sistemas de Computação.', 'MESTRE', 'helaine.lins@upe.br', 'Ciência da Computação', 'Helaine Solange Lins Barreiros');


INSERT INTO professor_courses(professor_id, courses_id) VALUES (1,1), (2,1), (3,1), (4,1), (5,1), (6,1), (7,1), (8,1);