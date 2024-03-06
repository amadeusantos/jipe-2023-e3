insert into course(
      id,
      additional_activities,
      annual_vacancies,
      degree_type,
      email,
      entries,
      extension_activities,
      final_paper,
      internship,
      modality,
      name,
      objectives,
      periods,
      shift,
      skills,
      undergraduate_profile,
      workload,
      coordinator_id
   )
values (
      1,
      180,
      30,
      'BACHAREL',
      'engenhariadesoftware.multicampi@upe.br',
      'PRIMEIRO',
      345,
      --  TCC
      'O Trabalho de conclusão de curso é obrigatório e contará com o auxílio das disciplinas de Seminários em Engenharia de Software 1 e Seminários em Engenharia de Software 2. Tais disciplinas tratarão de assuntos recentes da engenharia de software, que nem sempre podem ser cobertos pelas disciplinas vivenciadas pelo estudante durante o curso. A aprovação final do resultado do TCC não está condicionada à aprovação nas referidas disciplinas, elas existem para orientar e fornecer subsídios para os estudantes nos processos de concepção e execução de seus projetos. Estes últimos sob responsabilidade exclusiva do estudante envolvido no projeto e seu o orientador.; Deve ser observado que: O TCC pode ser realizado por grupos, orientados por pelo menos um professor do colegiado do curso. A realização de TCCs nesta modalidade está condicionada, à elaboração e aprovação pelo Colegiado do Curso, de um projeto detalhado justificando a sua execução por um grupo de estudantes. Os projetos devem, preferencialmente, envolver a produção de software. Em projetos com múltiplos estudantes, cada um recebe sua própria nota, independente das notas dos demais estudantes do mesmo grupo.; Os entregáveis de um grupo são definidos em conformidade com o projeto em questão. O TCC também pode ser realizado individualmente, sem nenhum prejuízo ao estudante e ao professor orientador. Situações diferentes dos itens anteriores serão tratadas pelo Colegiado do Curso.',
      -- Estágio
      'O estágio é não obrigatório e devidamente regulamentado pela UPE. Em tempo, a região não possui um número de empresas produtoras de software com reconhecida competência e em número significativo para admitir a exigência de estágio curricular. Convém ressaltar que estágio relevante para egresso deste curso envolve a produção de software com processos bem definidos e institucionalizados. O Curso ainda prevê a possibilidade do estágio ser realizado na modalidade de Fábrica de Software, dentro da própria instituição, supervisionado pelo professor-orientador. Igualmente, as diretrizes relativas à esta modalidade constam no manual do estágio supervisionado do curso.',
      'PRESENCIAL',
      'Engenharia de Software',
      -- Obejtivos
      'O Curso de Bacharelado em Engenharia de Software da UPE tem como objetivo principal formar profissionais capazes de atuar em todas as fases que subsidiam um processo de desenvolvimento de um produto de software, desde sua concepção, perpassando pela elicitação e arquitetura do produto, até sua construção, validação, implantação e manutenção. Ademais, a formação abrange igualmente princípios éticos e morais fundamentais para que o profissional se entenda e se reconheça como um ser social e que busque a harmonização e o equilíbrio entre as soluções tecnológicas e a sociedade.; Assim também, destacam-se como objetivos específicos do curso: Formar profissionais hábeis em utilizar ferramentas, métodos e processos com foco na qualidade dos produtos de software. Implantar práticas pedagógicas que estimulem o desenvolvimento do espírito crítico e inovador. Estimular a prática de ações que fomentem o auto aprendizado e a autonomia.; Estimular vivências interdisciplinares e extracurriculares, que permitam ao aluno combinar ideias e utilizar da criatividade para propor soluções igualmente inovadoras. Formar cidadãos com princípios éticos sólidos que prezem pelo humanismo nas práticas do seu dia-a-dia, e pela busca do bem-estar social e da sustentabilidade ambiental.; Fomentar práticas de pesquisa e de iniciação científica, através da implantação de programas de aperfeiçoamento contínuo. Integrar a sociedade circunvizinha através de atividades extensionistas. Estimular a cooperação entre docentes, discentes, universidade, mercado, indústria e instituições de pesquisa.',
      8,
      'DIURNO',
      -- Habilidades
      'De forma geral, o Curso de Bacharelado em Engenharia de Software UPE deve assegurar a formação de profissionais que possuam as seguintes competências e habilidades: Conhecer os limites da computabilidade, bem como a sua aplicabilidade na identificação de problemas que possuam uma solução algorítmica, compreendendo bem as suas dimensões. Desenvolver soluções e tomar decisões, com base em conhecimentos técnicos das características de infraestruturas de software, de hardware e de comunicação, bem como através de ambientes de desenvolvimento, norteados por princípios éticos e aspectos legais.; Ter domínio da língua portuguesa na leitura e produção de textos técnicos e científicos, visando à preparação e à apresentação de trabalhos, em seus diversos formatos. Identificar oportunidades de negócio, e atuar de forma criativa e empreendedora, abrangente e cooperativa no atendimento às demandas sociais da região onde atua, do Brasil e do mundo.; Capacidade de realizar projetos de forma cooperativa, podendo assumir papel de liderança e gestão, na supervisão da área de atuação profissional, harmonizando eventuais conflitos que possam minar custos, tempo, e a qualidade do produto. Conceber, especificar, projetar, desenvolver, avaliar e gerenciar softwares, considerando seus requisitos funcionais e especificações tecnológicas, de forma interdisciplinar, além da capacidade de acompanhar e adequar-se frente às mudanças tecnológicas e aos seus impactos.; Conhecer e aplicar normas técnicas nos projetos de software, bem como as normas legais subjacentes, como propriedade intelectual e direito autoral. Conhecer métodos, técnicas, e ferramentas adequadas para produção de softwares de alta qualidade, para as mais variadas plataformas de desenvolvimento disponíveis. Conhecer métodos, técnicas, e ferramentas adequadas para produção de softwares de alta qualidade, para as mais variadas plataformas de desenvolvimento disponíveis.; Aplicar boas práticas de desenvolvimento, validação e verificação de software. Promover a pesquisa, a partir da integração das áreas de Computação, Matemática e Produção, propondo, coordenando e avaliando projetos de desenvolvimento de software.',
      -- perfil dos egressos
      'O curso de Bacharelado em Engenharia de Software deve assegurar a formação de profissionais que: Sejam capazes de compreender, projetar e desenvolver soluções para os mais variados domínios – gestão, finanças, comércio, turismo, educação, transportes, entre outros –, e para diferentes plataformas, como Desktop, Mobile, e Web utilizando ferramentas, técnicas e métodos apropriados. Tenham uma formação embasada nas áreas de Ciências da Computação, Matemática e Produção, com vistas a produzir software de qualidade, no que tange aspectos econômicos, funcionais, sociais e ambientais.; Possam atuar de forma criativa e empreendedora, formulando e combinando ideias, bem como colocando-as em prática, contribuindo para o desenvolvimento da área, além de comprometido com o desenvolvimento local e regional. Entendam a necessidade do aperfeiçoamento contínuo, com vistas a acompanhar as atualizações que o mundo contemporâneo necessita, e que as tecnologias proveem.;  Sejam capazes de criar soluções fundamentadas em princípios éticos, humanísticos, legais e políticos. Possam harmonizar requisitos conflitantes, e exercer técnicas de comunicação, negociação, liderança, gestão, e agir com segurança e sabedoria, frente aos desafios de custo, de tempo, de sistemas e das tecnologias empregadas.',
      3345,
      null
   );