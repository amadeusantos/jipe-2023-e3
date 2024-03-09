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
   ),
   (
      2,
      200,
      40,
      'LICENCIADO',
      'computacao.multicampi@upe.br',
      'PRIMEIRO',
      0,
      --  TCC
      'O Trabalho de Conclusão de Curso é um requisito obrigatório para a obtenção do diploma de licenciatura em Computação e contará com o apoio das disciplinas de Seminários em Informática Educacional 1 e Seminários em Informática Educacional 2. Essas disciplinas abordarão tópicos recentes em informática educacional, que podem não ter sido totalmente explorados durante o curso regular. A avaliação final do TCC não está condicionada à aprovação nessas disciplinas; elas existem para orientar e fornecer subsídios aos estudantes no desenvolvimento e execução de seus projetos.; O TCC pode ser realizado individualmente ou em grupos, sob a orientação de pelo menos um professor do colegiado do curso. No caso de trabalhos em grupo, é necessário apresentar e obter a aprovação do Colegiado do Curso para um projeto detalhado, justificando a execução conjunta do trabalho por um grupo de estudantes. Preferencialmente, os projetos devem envolver o desenvolvimento de software, mas outras formas de produção acadêmica podem ser consideradas mediante aprovação.; Os critérios de avaliação para trabalhos em grupo são estabelecidos de acordo com o projeto em questão, sendo que cada estudante recebe sua própria nota, independentemente das notas dos demais membros do grupo. Entregáveis e etapas do trabalho são definidos conforme a natureza do projeto.; É importante ressaltar que a realização do TCC de forma individual não implica em prejuízo ao estudante ou ao professor orientador. Situações especiais que não se enquadrem nas condições mencionadas serão tratadas pelo Colegiado do Curso, visando garantir a justiça e a equidade no processo de avaliação e conclusão do curso de licenciatura em Computação.',
      -- Estágio
      'O Curso de Licenciatura em Computação da UPE deve contemplar objetivamente a realização de Estágios Curriculares Supervisionados, indispensáveis à formação docente, considerando e atendendo a implementação do perfl do egresso desejado. Eles constituem componentes curriculares obrigatórios, necessário à consolidação dos desempenhos profssionais desejados, com suas diferentes modalidades de operacionalização.',
      'PRESENCIAL',
      'Licenciatura em Computação',
      -- Obejtivos
      'O Curso de Licenciatura em Computação da UPE têm como objetivo principal formar professores, atuantes no ensino da Ciência da Computação, promovendo dessa forma o Pensamento Computacional: na Educação Básica, na Educação Profissional e na Educação Corporativa, onde a Computação constitui-se a base de formação para os usuários de infraestrutura de softwares em Organizações.; Ainda, o Curso visa à formação de profssionais capazes de atuar em projetos de softwares educativos e de sistemas educacionais, incluindo os de Educação à Distância, favorecendo a processos de ensino e aprendizagem, nas perspectivas de desenvolvimento e de uso de tecnologias digitais.',
      8,
      'INTEGRAL',
      -- Habilidades
      'De forma geral, o Curso de Licenciatura em Computação da UPE deve assegurar a formação de profssionais que possuam as seguintes competências, habilidades e atitudes: Conhecer os limites da Ciência da Computação, bem como a sua aplicabilidade na identifcação de problemas que possuam uma solução algorítmica, compreendendo bem as suas dimensões. Desenvolver soluções e tomar decisões, com base em conhecimentos técnicos das características de infraestruturas de hardware, de software e de comunicação, bem como através de ambientes de desenvolvimento, norteados por princípios éticos e aspectos legais.; Ter domínio da língua portuguesa na leitura e produção de textos técnicos e científicos, visando à preparação e à apresentação de trabalhos, em seus diversos formatos. Capacidade de atuar de forma empreendedora, abrangente e cooperativa no atendimento as demandas sociais da região onde atua, do Brasil e do mundo.; Atuar como docente ou junto ao corpo docente de escolas da Educação Básica ou Tecnológica com visão de avaliação crítica e reflexiva no uso adequado e pleno das tecnologias educacionais, promovendo a disseminação do Pensamento Computacional, de forma interdisciplinar. Participar em projetos de softwares, especialmente os com fns educativos e de sistemas educacionais, incluindo os de Educação à Distância, bem como em projetos de interfaces humanocomputador, onde o ensino e a aprendizagem fazem-se necessários, de forma interdisciplinar.; Especifcar, projetar, desenvolver e avaliar softwares e hardwares com fns educativos e sistemas educacionais, incluindo os de Educação à Distância, considerando seus requisitos pedagógicos e questões tecnológicas, de forma interdisciplinar, além da capacidade de acompanhar e adequar-se frente às mudanças tecnológicas e aos seus impactos. Produzir materiais didáticos, fazendo uso das tecnologias digitais.; Atuar como agentes integradores na promoção da acessibilidade digital, norteados pelos princípios da Educação Inclusiva. Promover a pesquisa, a partir da integração das áreas de Educação, Psicologia e Computação, propondo, coordenando e avaliando projetos de ensino e de aprendizagem. Administrar laboratórios de tecnologias digitais com fins educativos.',
      -- perfil dos egressos
      'De forma geral, o Curso de Licenciatura em Computação da UPE deve assegurar a formação de profssionais que possuam: Conhecimento das questões sociais profssionais, legais, éticas, políticas, humanísticas e ambientais. Compreensão do impacto da computação e suas tecnologias na sociedade no que concerne ao atendimento e à antecipação estratégica das necessidades da sociedade.; Visão crítica e criativa na identifcação e resolução de problemas contribuindo para o desenvolvimento de sua área. Conhecimento para atuar de forma empreendedora, abrangente e cooperativa no atendimento às demandas sociais da região onde atua, do Brasil e do mundo.; Conhecimento para utilizar racionalmente os recursos educacionais disponíveis de forma transdisciplinar. Compreensão das necessidades da contínua atualização e aprimoramento de suas competências e habilidades. Reconhecimento da importância do pensamento computacional na vida cotidiana, como também sua aplicação em outros domínios e ser capaz de aplicá-lo em circunstâncias apropriadas.',
      3230,
      null
   ),
   (
      3,
      250,
      40,
      'BACHAREL',
      'medicina.garanhuns@upe.br',
      'SEGUNDO',
      0,
      --  TCC
      'O Trabalho de Conclusão de Curso é uma exigência obrigatória para a obtenção do diploma de graduação em Medicina e será desenvolvido com o suporte das disciplinas de Seminários em Medicina 1 e Seminários em Medicina 2. Essas disciplinas abordarão tópicos recentes em medicina que podem não ter sido totalmente explorados durante o curso regular. A avaliação final do TCC não está diretamente vinculada à aprovação nessas disciplinas; elas existem para orientar e fornecer subsídios aos estudantes durante o desenvolvimento e a execução de seus projetos.; O TCC pode ser realizado de forma individual ou em grupos, com orientação de pelo menos um professor do corpo docente do curso de Medicina. No caso de trabalhos em grupo, é necessário submeter ao Colegiado do Curso um projeto detalhado, justificando a execução conjunta do trabalho por um grupo de estudantes. Embora projetos preferencialmente envolvam pesquisa clínica ou básica, outras abordagens acadêmicas serão consideradas mediante aprovação do Colegiado.; Os critérios de avaliação para trabalhos em grupo são estabelecidos com base no projeto em questão, e cada estudante recebe uma nota individual, independentemente das notas dos outros membros do grupo. Entregáveis e etapas do trabalho são definidos conforme a natureza do projeto e as diretrizes estabelecidas pelo Colegiado.; É importante ressaltar que a realização do TCC individualmente não implica prejuízo ao estudante ou ao professor orientador. Situações excepcionais que não se enquadrem nas condições mencionadas serão tratadas pelo Colegiado do Curso, garantindo assim a imparcialidade e a justiça no processo de avaliação e conclusão do curso de graduação em Medicina.',
      -- Estágio
      'O internato é a última fase do curso de medicina, sendo parte integrante e obrigatória do currículo de graduação e tem por finalidade o treinamento em serviço, para sedimentação dos conhecimentos adquiridos durante o curso médico, realizado sob supervisão de preceptoria docente, médica ou da área de saúde, sendo realizado em Instituições de saúde vinculados a Universidade e/ou a rede de saúde do SUS, sendo dirigido para atividades eminentemente práticas.; O Internato tem por objetivos: Representar a última etapa da formação do médico generalista, capaz de resolver ou bem encaminhar os problemas de saúde da população alvo. Oferecer oportunidades de ampliação, integração e aplicação dos conhecimentos adquiridos durante a graduação.; Permitir melhor adestramento em técnicas e habilidades indispensáveis aos atos médicos. Promover o aperfeiçoamento ou a aquisição de atitudes adequadas a assistência aos pacientes. Possibilitar a prática de assistência integrada, multiprofissional na área da saúde. Permitir experiências em atividades resultantes da interação escola médica, serviços e comunidade.; Estimular o interesse pela promoção e preservação da saúde e pela prevenção das doenças. Desenvolver a consciência das limitações, responsabilidades e deveres éticos dos médicos, perante o paciente, a instituição, a comunidade e os seus pares. Desenvolver a ideia da necessidade de aperfeiçoamento profissional continuado.',
      'PRESENCIAL',
      'Medicina',
      -- Obejtivos
      'O Curso de Graduação em Medicina da Faculdade de Ciências, Educação e Tecnologia de Garanhuns da UPE-Garanhuns tem a denominação de Curso Médico por ter como objetivo a formação de médico, pretende, portanto: Formar médico tenha uma formação geral, humanista, crítica, reflexiva e ética e capacidade para atuar nos diferentes níveis de atenção à saúde. Formar profissionais com habilidades para o desempenho de ações de promoção, prevenção, recuperação e reabilitação da saúde, nos âmbitos individual e coletivo.; Desenvolver nos indivíduos em formação a responsabilidade social e compromisso com a defesa da cidadania, da dignidade humana, da saúde integral do ser humano e tendo como transversalidade em sua prática, sempre, a determinação social do processo de saúde e doença. Gerar promotores da saúde integral do ser humano, compreendendo não só o indivíduo, mas também a sua comunidade, intervindo em suas necessidades de saúde, em situação social específica, objetivando a redução dos danos e ampliando a autonomia social.',
      10,
      'INTEGRAL',
      -- Habilidades
      'O perfil de competência utilizado como referência no curso de medicina baseia-se nas novas Diretrizes Curriculares Nacionais 2014. As competências desse perfil focadas em 3 áreas: Atenção à Saúde, Gestão em Saúde e Educação em Saúde. A competência é aqui compreendida como a capacidade de mobilizar conhecimentos, habilidades e atitudes, com utilização dos recursos disponíveis, e exprimindo-se em iniciativas e ações que traduzem desempenhos capazes de solucionar, com pertinência, oportunidade e sucesso, os desafios que se apresentam à prática profissional, em diferentes contextos do trabalho em saúde, traduzindo a excelência da prática médica, prioritariamente nos cenários do SUS.; Na área de atenção à saúde as competências são: Realização da História Clínica, Realização do Exame Físico, Formulação de Hipóteses e Priorização de Problemas, Promoção de Investigação Diagnóstica, Elaboração e Implementação de Planos Terapêuticos e Acompanhamento e Avaliação de Planos Terapêuticos e na área de gestão em saúde as competências são: Identificação do Processo de Trabalho, Elaboração e Implementação de Planos de Intervenção, Gerenciamento do Cuidado em Saúde e  Monitoramento de Planos e Avaliação do Trabalho em Saúde.',
      -- perfil dos egressos
      'O graduado em medicina da UPE, será formado para que, ao lado de uma base sólida de conhecimento da Medicina contemporânea, possa atuar dentro dos princípios de resolutividade e integralidade, preconizados pelo SUS.;  Durante o curso, ele aprenderá a aprender, isto é, aprender a ser, a fazer, a conviver e a conhecer para desenvolver o seguinte perfil: médico com formação geral, humanista, crítica, reflexiva e ética, com capacidade para atuar nos diferentes níveis de atenção à saúde, com ações de promoção, prevenção, recuperação e reabilitação da saúde, nos âmbitos individual e coletivo, com responsabilidade social e compromisso com a defesa da cidadania, da dignidade humana, da saúde integral do ser humano e tendo como transversalidade em sua prática, sempre, a determinação social do processo de saúde e doença.; Dada a necessária articulação entre conhecimentos, habilidades e atitudes requeridas do egresso, para o futuro exercício profissional do médico, a formação do graduado em Medicina desdobrar-se-á nas seguintes áreas: Atenção à Saúde, Gestão em Saúde e Educação em Saúde. As competências desenvolvidas nessas três áreas tornarão o graduado apto a desenvolver ações de promoção, prevenção, proteção e reabilitação da saúde, tanto em nível individual como coletivo, dentro dos mais altos padrões de qualidade e princípios éticos.',
      3230,
      null
   );
INSERT INTO course(
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
VALUES (
      4,
      250,
      50,
      'BACHAREL',
      'psicologia.multicampi@upe.br',
      'AMBOS',
      360,
      'Componentes curriculares relativos aos TCCs – o discente deverá ter
assiduidade de, pelo menos, setenta e cinco por cento (75%) da carga horária
prevista nos componentes curriculares prática de Pesquisa I e II a serem
ministrados de forma colegiada. Este Trabalho de Conclusão de Curso
constituirá atividade obrigatória dos referidos componentes e deverá ser
entregue, ao final de cada semestre letivo, duas etapas conforme o ementário. Ao
final do primeiro semestre, deverá ser apresentado um projeto de pesquisa de
acordo as normativas exigidas e será avaliado conforme o critério geral de
aproveitamento exposto no item 3. A avaliação será realizada pelo professor
orientador que deverá atribuir as respectivas notas das unidades letivas. Na
primeira unidade do segundo semestre letivo, a nota será atribuída pelo professor
orientador. Ao final do segundo semestre, o discente deverá apresentar
oralmente a pesquisa realizada para banca examinadora, em sessão pública, e
será avaliado de acordo com os seguintes critérios: média das avaliações
atribuídas abaixo de seis (6,0) será considerado reprovado; média entre seis
vírgula um (6,1) e seis vírgula nove (6,9) será aprovado com restrição (neste
caso o discente terá oito dias corridos para realizar as alterações recomendadas
pela banca e realizar apresentação oral); média entre sete (7,0) e dez (10,0)
aprovado. No caso do não atendimento às exigências citadas o graduando será
reprovado e deverá cursar novamente os componentes curriculares.',
      'Componentes curriculares relativos aos estágios – o discente deverá cumprir
cem por cento (100%) da carga horária de estágios obrigatórios do curso, sejam
eles básicos e/ou específicos e apresentar documentos (plano de atividades de
estágio; relatórios e/ou relato de experiência) equivalentes às atividades
desenvolvidas como forma de complementar a avaliação. Nestes componentes
curriculares, dada à especificidade e obrigatoriedade do cumprimento da carga
horária proposta, os discentes deverão cumprir as exigências no decorrer das
unidades letivas, não havendo possibilidade para realização de exame final;',
      'PRESENCIAL',
      'Psicologia',
      'O Curso de Graduação em Psicologia da UPE – Campus Garanhuns tem a
denominação de Curso de Bacharelado em Psicologia – Formação de Psicólogo por ter
como objetivo a formação de psicólogos e de bachareis em Psicologia, baseada nas
Diretrizes Curriculares Nacionais contidas na Resolução CNE/CES Nº 5/2011 (DCN 11
- Anexo 02). Pretende, portanto:
Geral:
Formar psicólogos qualificados para atuação profissional, para a pesquisa e para
o ensino de Psicologia, primando pela qualidade da formação e pelo compromisso ético-
político e social.
Específicos:
-Articular ensino-pesquisa-extensão na produção do conhecimento acadêmico-
científico;
-Ofertar uma formação generalista privilegiando a diversidade de perspectivas
teórico-metodológicas que permitam atuações em diferentes contextos;
-Propiciar espaços que contribuam para o desenvolvimento de uma reflexão
crítica perpassada pelo compromisso ético-político;
-Enfocar a importância de desenvolver uma relação dialógica entre a Psicologia
e demais saberes.',
      10,
      'DIURNO',
      'Citando a DCN 2011, a formação em Psicologia tem por objetivos gerais dotar o
profissional dos conhecimentos requeridos para o exercício das seguintes competências
e habilidades gerais:
I - Atenção à saúde: os profissionais devem estar aptos a desenvolver ações de
prevenção, promoção, proteção e reabilitação da saúde psicológica e
psicossocial, tanto em nível individual quanto coletivo, bem como a realizar seus
serviços dentro dos mais altos padrões de qualidade e dos princípios da
ética/bioética;
II - Tomada de decisões: o trabalho dos profissionais deve estar fundamentado
na capacidade de avaliar, sistematizar e decidir as condutas mais adequadas,
baseadas em evidências científicas;
III - Comunicação: os profissionais devem ser acessíveis e devem manter os
princípios éticos no uso das informações a eles confiadas, na interação com
outros profissionais de saúde e o público em geral;
IV - Liderança: no trabalho em equipe multiprofissional, os profissionais
deverão estar aptos a assumirem posições de liderança, sempre tendo em vista o
bem-estar da comunidade;',
      'O curso propõe uma formação generalista e pluralista, de acordo com as Novas Diretrizes Curriculares Nacionais, em vigor desde 2011, que assegure um exercício profissional calcado nos princípios éticos, na cientificidade, na criticidade e na reflexão, comprometido com as demandas sociais. Deve-se destacar o compromisso ético-social-profissional como princípio, habilitando o graduando a atuar em diferentes contextos, de forma articulada com profissionais de áreas afins numa perspectiva interdisciplinar. O curso oferece quatro ênfases curriculares, articuladas com as principais demandas da região, como forma de possibilitar a integração e a inserção no mundo de trabalho, a saber: Psicologia e processos clínicos; Psicologia e processos de prevenção e promoção da saúde, Psicologia e processos de gestão e Psicologia e processos educativos.O perfil curricular enfatiza, desde o primeiro ano de formação, a articulação entre teoria e prática por meio de estágios básicos obrigatórios em diferentes áreas de atuação. O perfil curricular enfatiza, desde o primeiro ano de formação, a articulação entre teoria e prática por meio de estágios básicos obrigatórios em diferentes áreas de atuação.',
      4090,
      null
   ),
   (
      5,
      210,
      40,
      'LICENCIADO',
      'cienciasbiologicas.multicampi@upe.br',
      'AMBOS',
      321,
      --TCC
      '
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Segundo o PPC de 2018, o curso conta com TCC obrigatório.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
      --Estágio
      '
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Estágio Curricular é fundamental para a vivência do estudante em ambientes de
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        trabalho, constituindo-se como importante momento de formação da sua prática
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        profissional. Dessa maneira, é composto por dois eixos: Estágio Obrigatório (curricular) e
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Estágio Não Obrigatório (extracurricular).
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
      'HIBRIDO',
      'Ciências biológicas',
      --objetivos
      '
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        O objetivo principal do Curso de Licenciatura em Ciências Biológicas é proporcionar
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        uma formação profissional ampla e sólida, que seja integradora dos conhecimentos das
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        áreas da Biologia e da Pedagogia, que resulte na formação de licenciados competentes para
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        a prática docente na educação básica, para o desenvolvimento de pesquisa na área e
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        comprometidos com o exercício crítico e responsável da profissão.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
      8,
      'NOTURNO',
      -- habilidades
      '
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        De forma geral, o Curso de Licenciatura em Ciências Biológicas da UPE deve assegurar a formação de profissionais que possuam as seguintes competências e habilidades:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Construir competências atinentes à formação pedagógica e técnica, conhecendo,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        analisando e respeitando a diversidade biológica de cada ecossistema;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Relacionar o ensino das Ciências Biológicas com as demais áreas do conhecimento
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        numa perspectiva inter/transdisciplinar;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Situar a prática educacional em diferentes espaços e processos da construção do
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        conhecimento;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Assumir atitudes responsáveis como profissional-cidadão, ético, consciente, crítico
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        e tecnicamente capaz de atuação na construção do projeto pedagógico da
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        instituição em que atua, bem como na transformação social;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Compreender os diferentes sistemas biológicos e suas especificidades, assim como,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        as relações históricas, evolutivas e ecológicas entre os seres vivos e o seu ambiente;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Identificar as Ciências Biológicas como elemento construtor da identidade sócio político-cultural do cidadão;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Articular os conhecimentos das Ciências Biológicas através de ferramentas
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        tecnológicas disponíveis na formação técnico-científico-pedagógica;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Refletir sobre o papel de educador como docente e pesquisador contemporâneo,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        na perspectiva de constante atualização por meio da formação continuada.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
      -- perfil
      '
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        O egresso do Curso de Licenciatura em Ciências Biológicas deverá ter um perfil que
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        reúna conhecimento na área das Ciências Biológicas bem como conhecimento da área
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        pedagógica para que consiga encontrar e avaliar diferentes soluções e caminhos no ensino
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        de Ciências e Biologia, visando a aprendizagem significativa, assim como desenvolva o
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        pensamento científico e o aplique na resolução de problemas. Assim, o egresso deverá ser
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        capaz de, através do seu conhecimento nas áreas da biologia e da pedagogia, responder às
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        condições dinâmicas para atuação na sociedade contemporânea, considerando a diversidade
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        e a pluralidade cultural e tendo a docência e a pesquisa como base de sua formação, atuação
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        e identidade profissionais. Para isso, o egresso deve estar habilitado a garantir uma
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        educação formal contextualizada e problematizadora, assegurando a indissociabilidade
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        entre ensino, pesquisa e extensão.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
      3230,
      null
   ),
   (
      6,
      200,
      50,
      'LICENCIADO',
      'matematica.multicampi@upe.br',
      'AMBOS',
      321,
      'O término do Curso está condicionada a um trabalho de conclusão o qual terá a
finalidade de completar a formação do docente, em termos acadêmico-científicos. O
trabalho a ser entregue pelo aluno poderá ser uma monografia, ou um artigo (quando enviado em evento acadêmico com ISSN ou revista indexada), sob a orientação de
um docente efetivo da unidade de ensino.
O trabalho de conclusão de curso deve ser desenvolvido em uma das seguintes
linhas de pesquisa: Matemática Teórica e Desenvolvimento Matemático; Matemática
Aplicada; Ensino da Matemática, Desenvolvimento e Tecnologia.
A apresentação da produção escrita deverá ser analisada por banca
examinadora 30 dias antes da defesa, onde a banca deverá ser composta pelo
professor Orientador, que preside e indica os outros 2 (dois) membros, dentre os
quais um deve pertencer ao quadro de professores da UPE. Caso o co-orientador
seja integrante da banca, esta deverá ser composta por 4 (quatro) membros. Poderão
ser integrantes da banca examinadora estudantes de pós-graduação stricto sensu.
Após análise da produção escrita, os examinadores deverão entregar um parecer
para que sejam feitas as adequações propostas. Em seguida, o aluno deverá
entregar e apresentar a versão final do trabalho de conclusão de curso.
Salienta-se que no decorrer do componente Curricular Projeto de Pesquisa I faz-
se necessário a submissão de trabalhos que envolvam seres humanos no Comitê de
Ética da UPE.',
      'O estágio, enquanto elemento essencial na formação profissional caracteriza-
se como um momento curricular de natureza pedagógica, tendo como âncora as
políticas de formação profissional, devendo ocorrer em instituições oficiais, unidades
de Ensino – espaço onde o/a estagiário/a desenvolverá o papel de professor/a a partir
da articulação teoria/prática.
Na qualidade de profissional do ensino, esse/a estagiário/a deverá ser capaz
de problematizar e propor soluções alternativas no contexto específico de sua prática,
pautando-se nos princípios da ética, da participação, do diálogo, da articulação com
os conhecimentos científicos e filosóficos, construídos ao longo da história da
humanidade na perspectiva de efetivação da interdisciplinaridade. Com efeito, o
estágio curricular, num contexto amplo, deverá concretizar o movimento prática–
teoria / prática-ação / reflexão-ação. Para tanto, o estágio representa um processo de formação profissional dos/as
graduandos/as, consolidando-se a partir das atividades desenvolvidas in locus e que
não se restringem apenas à sala de aula, mas a toda uma dinâmica evocada pela
escola, ou seja, ao planejamento, à avaliação das situações didáticas, à organização
administrativa e pedagógica entre outras.
Nesse sentido, o artigo 1º e 2º da LDB, bem como o artigo 3º, XI, e tal como
expressa, sob o conceito no parecer CNE/CP 9/2001, o estágio curricular é o
momento de efetivar, sob a supervisão de um/a profissional experiente, um processo
de ensino-aprendizagem, que se tornará concreto e autônomo quando da
profissionalização desse/a estagiário/a.
Com isso, serão promovidas formas internas de debate na instituição de
origem, nas instituições campo de estágio, nos grupos de estágio no sentido de
socializar, refletir e discutir a produção do conhecimento desenvolvido pelos/as
estagiários/as. b - OBJETIVOS
Compreender a organização do trabalho educativo na escola e as várias instâncias de participação na instituição escolar.
Articular os princípios da ética democrática, da participação e do diálogo,
atuando como profissionais e cidadãos.
Compreender o contexto e as relações em que está inserida a prática
educativa.
Articular conteúdos e metodologias a partir dos pressupostos epistemológicos.
Analisar o percurso de aprendizagem formal e informal do aluno, identificando
características cognitivas, afetivas, processo de desenvolvimento, formas de
acessar e processar conhecimentos, possibilidades e obstáculos.
Criar, planejar, realizar, gerir e avaliar situações didáticas eficazes para a
aprendizagem dos/as alunos/as, utilizando os conhecimentos das áreas de
forma interdisciplinar.
Planejar estratégias de comunicação dos conteúdos, sabendo eleger as mais
adequadas, considerando a diversidade dos alunos, os objetivos das
atividades propostas e as características dos próprios conteúdos.
Utilizar estratégias diversificadas de avaliação da aprendizagem a partir de
seus  resultados e formular propostas de intervenção pedagógica,
considerando o desenvolvimento de diferentes capacidades dos alunos.
Participar coletiva e cooperativamente da elaboração, gestão, desenvolvimento
e avaliação do projeto político-pedagógico da instituição, atuando em
diferentes contextos da prática profissional, além da sala de aula.
Desenvolver estratégias em atividades artísticas e culturais.
Conhecer as atividades administrativas, financeiras e pedagógicas da instituição.
Confrontar as observações, os resultados, os eventos, as atividades práticas e
outras, tendo em vista a elaboração do relatório final.
c - CONTEÚDOS CURRICULARES
Os conteúdos curriculares perpassam a dinâmica do amplo contexto escolar,
em seus aspectos gerais, concretizando-se nas ações, nas metas, no projeto político
pedagógico e administrativo da escola, reiterando ainda sobre os conhecimentos
específicos da área como componentes curriculares, compreendendo:
Regência em turma de Ensino Fundamental e Médio.
Articulação entre o estágio e as atividades de pesquisa em prática
desenvolvida pelos/as alunos/as desta Unidade de Ensino.
Elaboração do projeto de estágio. Elaboração do relatório de estágio.
Socialização, reflexão e discussão da produção do conhecimento desenvolvido
pelo/a estagiário/a.
DISPENSAS POR APROVEITAMENTO DE ATIVIDADES DOCENTE
a) DISPENSA DO ESTAGIÁRIO EM DECORRÊNCIA DO APROVEITAMENTO DE
ATIVIDADES DOCENTES.
Para os/as alunos/as que estejam em efetivo exercício regular da atividade
docente na educação básica, o estágio curricular supervisionado poderá ser reduzido,
no máximo, em até 200 horas, segundo parágrafo único da Resolução CNE/CP2, de
19 de fevereiro de 2002.O/a aluno/a que comprovar, com documento, o efetivo exercício regular da
atividade docente na educação básica, será liberado do Estágio Supervisionado III e
parte do Estágio Supervisionado IV, devendo cumprir os estágio I e II ',
      'PRESENCIAL',
      'Matemática',
      'Preparar professores com uma sólida formação científica, filosófica, técnica e
experimental, potencializando sua capacidade crítica e criativa, desenvolvendo as
condições para atuarem na área de educação matemática, seja na Educação Básica,
seja para ingressarem em curso de pós-graduação a fim de atuarem em instituições
de nível superior.',
      8,
      'NOTURNO',
      'Planejar e desenvolver diferentes experiências didáticas em Matemática, nas
diversas modalidades de ensino.
Mediar o conhecimento, observando as diferenças individuais e dificuldades de
aprendizagem, referenciados pelos projetos político-pedagógicos institucionais e
pelas diretrizes curriculares da educação.
Proporcionar do conhecimento holístico e interdisciplinar realizando articulação
entre teoria e prática.
Conhecer e dominar os conteúdos básicos do ensino de Matemática que
constituirão o objeto da atividade docente, adequando-os às atividades escolares
próprias dos diferentes níveis e modalidades da educação básica.
Dominar processos que viabilizem a atuação docente na educação básica.
Promover debates que priorizem as questões sociais, políticas e educacionais.
Elaborar projetos que favoreçam a intervenção na realidade social, política,
econômica, educacional e cultural.
Socializar a produção do saber nos âmbitos educacional e científico, propiciando
a reconstrução do conhecimento.
Elaborar projetos disciplinares e interdisciplinares, socializando as experiências
vivenciadas local e nacionalmente.
Ter domínio da sistematização, seleção e organização do material bibliográfico e
didático básicos ao desempenho profissional.
Produzir, criticar, construir e mediar conhecimentos no ensino, na pesquisa ou
em outras modalidades de atuação.
Utilizar recursos da informática e da comunicação e novas tecnologias como
instrumentos para a formação técnico-científico-pedagógica.',
      'O Curso de Licenciatura em Matemática está pautado numa matriz de seis âmbitos de formação: Cultura Geral e Profissional; Conhecimentos de crianças, adolescentes e adultos; Dimensão Cultural, Social, Política e Econômica da Educação; Conteúdos: objeto de Ensino; Conhecimentos pedagógicos e Conhecimentos advindos da experiência.',
      3210,
      null
   ),
   (
      7,
      210,
      50,
      'LICENCIADO',
      'geografia.multicampi@upe.br',
      'AMBOS',
      240,
      'A malha curricular apresentadas neste documento exigem, para a integralização do
curso de Licenciatura em Geografia da UPE, Campus Garanhuns, a elaboração de um
ensaio monográfico segundo as normas da ABNT como trabalho de Conclusão de Curso,
requisito que expõem as competências e habilidades específicas da inter relação entre
formação específica em Geografia e a experiência de iniciação à prática de pesquisa em
Geografia.
O ensaio monográfico será orientado por um professor integrante do corpo docente
presente no colegiado do curso no ano da integralização do curso correspondente a cada
matriz específica, ou seja, a partir da vivência do sétimo período, segundo a formação
específica do orientador e de acordo com a sua disponibilidade.',
      'O Estágio supervisionado caracteriza-se como uma exigência legal e um
procedimento metodológico do curso, visando o intercâmbio, a reelaboração e a produção
de conhecimentos sobre os diferentes contextos de atuação e as alternativas de intervenção
profissional.
Constitui-se num componente curricular que possibilita a interação entre os
diferentes atores situados nos diversos níveis que constituem as organizações escolares e
não escolares. Objetivos
Contribuir para a melhoria qualitativa da educação das escolas, campo estágio.
Situar o aluno como o responsável pela sua formação profissional.
Subsidiar a construção da identidade profissional a partir da observação/análise
crítica de situações vividas em contextos institucionais, numa perspectiva de
aproximação do saber, do saber fazer e do saber ser.
Analisar a prática pedagógica em vários contextos educacionais, selecionando e
organizando alternativas de intervenção que contribuam para a ressignificação de
valores e para a construção da cidadania.
Avaliar as contribuições do Estágio Supervisionado para a construção das
competências e habilidades necessárias ao exercício da atividade profissional.
ATRIBUIÇÕES DOS ENVOLVIDOS NO ESTÁGIO
PROFESSOR DA DISCIPLINA DE ESTÁGIO
Professor da UPE responsável por conduzir a carga-horária teórica em sala de aula,
auxiliando os alunos nas discussões teóricas, metodológicas, normativas e de legislação
sobre o estágio supervisionado.
PROFESSOR ORIENTADOR DO ESTÁGIO
Professor da UPE, responsável por acompanhar a elaboração e o desenvolvimento das
atividades dos alunos junto às escolas, orientando-o na elaboração e desenvolvimento das
atividades e relatórios a serem desenvolvidos.
SUPERVISOR DO ESTÁGIO
Professor da Escola campo de Estágio responsável por receber e acompanhar os alunos nas
atividades desenvolvidas nas escolas campo de estágio, supervisionando-o no
desenvolvimento das atividades.
Eixos Norteadores
O Estágio Supervisionado apresenta os seguintes eixos norteadores:
A docência como base da formação e da identidade profissionais;
A pesquisa como fundamento para a produção e difusão do conhecimento científico
e tecnológico do campo de atuação profissional;
A extensão como recurso na organização e gestão de sistemas, instituições, projetos
e experiências escolares e não-escolares.
Princípios Metodológicos
A pesquisa deverá ter como objeto de estudo aspecto(s) do ensino-aprendizagem
relacionado(s) aos eixos norteadores do estágio.
As oficinas de extensão devem relacionar-se a pesquisa e atender as necessidades,
exigências e expectativas de superação de problemas identificados nas Instituições
campo de estágio.
O ensino deverá ser vivenciado através de projetos didáticos-pedagógicos
elaborados em consonância com a proposta pedagógica do componente curricular
em estudo.',
      'PRESENCIAL',
      'Geografia',
      'Contribuir para a melhoria qualitativa da educação das escolas campo estágio.
Situar o aluno como o responsável pela sua formação profissional.
Subsidiar a construção da identidade profissional a partir da observação/análise
crítica de situações vividas em contextos institucionais, numa perspectiva de
aproximação do saber, do saber fazer e do saber ser.
Analisar a prática pedagógica em vários contextos educacionais, selecionando e
organizando alternativas de intervenção que contribuam para a ressignificação de
valores e para a construção da cidadania.
Avaliar as contribuições do Estágio Supervisionado para a construção das
competências e habilidades necessárias ao exercício da atividade profissional.',
      8,
      'NOTURNO',
      'A proposta pedagógica da Licenciatura em geografia é norteada por alguns
princípios condutores da formação profissional, presente em todos os momentos
curriculares, com reflexos na atuação posterior de egresso.
A ênfase nos valores éticos deve permear o estudo dos conhecimentos, ou seja,
objetos de estudo, no entendimento de que os avanços científicos estão a serviço da
humanidade e da vida. Isto implica numa formação profissional crítica, na qual o
discernimento é orientado pela clareza das investigações, com vista à socialização dos
saberes compartilhados.
A partir da constatação relativa à heterogeneidade humana, o curso permitirá
espaços curriculares para a discussão em torno da pluralidade de ideias e à aceitação da
diversidade, revelada na presença de múltiplas culturas, nas diferenças cognitivas, de
gênero, de credo e ideologia.
A docência como foco central do curso é compreendida numa visão ampliada, que
ultrapassa a sala de aula e a dimensão técnica do ensino, respaldada na reflexão sobre a
prática, numa perspectiva crítica do conhecimento, tendo a pesquisa como princípio
educativo e fonte renovadora dos saberes pedagógicos.
O compromisso político-social do educador estará expresso nos objetivos do curso
relacionados à ênfase na formação humanística, visando à cidadania consciente.
A conexão entre os estudos e a sociedade assegura o vínculo entre teoria e a prática
guiando as intervenções pedagógicas concretas que atendam um projeto social mais amplo.
A proposta do curso terá como pressupostos didático/metodológico:
O diálogo didático entre conhecimento-aluno, mediado pelo professor.
A participação ativa do aluno como protagonista do seu próprio processo de
aprendizagem, compartilhando discussões com os professores e colegas.
A autonomia, no sentido cognitivo, procedimental e atitudinal, desenvolvida por
situações didáticas propostas aos alunos em trabalhos individuais e/ou em grupos.
A avaliação constante, numa perspectiva processual e diagnóstica, permitindo a
recondução do planejamento pedagógico.
Em termos legais, o curso tem seus fundamentos nas diretrizes curriculares
nacionais para as licenciaturas, pondo o enfoque na interação entre o ensino, a pesquisa e a
extensão, tendo em vista a construção do conhecimento pedagógico, a partir do contexto da
prática e da compreensão e desvelar do fenômeno educativo.',
      'O Curso de Licenciatura em Geografia está pautado numa matriz de seis âmbitos de formação: Cultura Geral e Profissional; Conhecimentos de crianças, adolescentes e adultos; Dimensão Cultural, Social, Política e Econômica da Educação; Conteúdos: objeto de Ensino; Conhecimentos pedagógicos e Conhecimentos advindos da experiência.',
      3210,
      null
   ),
   (
      8,
      225,
      50,
      'LICENCIADO',
      'pedagogia.multicampi@upe.br',
      'AMBOS',
      345,
      -- tcc
      '
De acordo com o Projeto Pedagógico, o artigo científico é o trabalho de
conclusão de Curso aceito como requisito parcial para a finalização do curso e
corresponde a no mínimo 60 horas, incorporadas e distribuídas nos
componentes curriculares da área de pesquisa em Educação, além dos
encontros de orientação entre o estudante e o seu orientador.
',
      --estágio
      '
O curso de Pedagogia da UPE possui quatrocentas horas de estágio supervisionado obrigatório distribuídas em 4 disciplinas
e considera o Estágio Supervisionado como um campo comprometido com a articulação
entre teoria e prática, com foco no processo formativo do/a estudante.
',
      'PRESENCIAL',
      'Pedagogia',
      --objetivos
      '
Gerais:
- Articular ensino-pesquisa-extensão na produção do conhecimento
pedagógico e científico no campo educacional;
- Refletir sobre o fenômeno e a prática educativa em diferentes âmbitos
e modalidades;
- Explicitar o processo de construção do conhecimento no ser humano
como fundamento do seu fazer pedagógico em etapas e modalidades
da Educação Básica;
- Desenvolver uma postura ética, crítica e criativa de atuação
profissional e a consequente responsabilidade social;
- Investigar a realidade escolar e/ou não-escolar, produzindo
conhecimento e criando possibilidade de intervenção na prática
pedagógica;
- Dialogar com a sua área de conhecimento e as demais áreas,
relacionando-as à realidade social, ampliando a percepção da
abrangência destas relações.
Específicas:
- Participar do processo educacional em âmbito escolar e não-escolar
com uma visão crítica e ampla do contexto socioeducacional;
- Contribuir para a construção e gestão do Projeto Político-Pedagógico,
considerando-o trabalho coletivo e democrático;
- Desenvolver metodologias adequadas às tecnologias da informação e
da comunicação na prática pedagógica;
- Vivenciar as diferentes linguagens manifestas nas sociedades
contemporâneas, valorizando-as em sua função na produção do
conhecimento;
- Respaldar-se em princípios éticos e epistemológicos para fazer
escolhas e tomar decisões metodológicas e didáticas de modo
consciente e consistente;
- Desenvolver um trabalho pedagógico, estabelecendo uma relação
dialógica com autoridade, confiança e afetividade em contextos
educacionais e/ou culturais, envolvendo diferentes atores sociais;
- Utilizar metodologias diversificadas de avaliação com base na análise
dos resultados para intervir na prática pedagógica em diferentes
etapas e modalidades, em contextos escolares e não-escolares;
- Ampliar seu horizonte cultural, na formação continuada, adotando uma
postura crítica e cidadã.

',
      8,
      'NOTURNO',
      'Gerais
- Articular ensino-pesquisa-extensão na produção do conhecimento
pedagógico e científico no campo educacional;
- Refletir sobre o fenômeno e a prática educativa em diferentes âmbitos
e modalidades;
- Explicitar o processo de construção do conhecimento no ser humano
como fundamento do seu fazer pedagógico em etapas e modalidades
da Educação Básica;
- Desenvolver uma postura ética, crítica e criativa de atuação
profissional e a consequente responsabilidade social;
- Investigar
a
realidade
escolar
e/ou
não-escolar,
produzindoconhecimento e criando possibilidade de intervenção na prática
pedagógica;
- Dialogar com a sua área de conhecimento e as demais áreas,
relacionando-as à realidade social, ampliando a percepção da
abrangência destas relações.
Específicas
- Participar do processo educacional em âmbito escolar e não-escolar
com uma visão crítica e ampla do contexto socioeducacional;
- Contribuir para a construção e gestão do Projeto Político-Pedagógico,
considerando-o trabalho coletivo e democrático;
- Desenvolver metodologias adequadas às tecnologias da informação e
da comunicação na prática pedagógica;
- Vivenciar as diferentes linguagens manifestas nas sociedades
contemporâneas, valorizando-as em sua função na produção do
conhecimento;
- Respaldar-se em princípios éticos e epistemológicos para fazer
escolhas e tomar decisões metodológicas e didáticas de modo
consciente e consistente;
- Desenvolver um trabalho pedagógico, estabelecendo uma relação
dialógica com autoridade, confiança e afetividade em contextos
educacionais e/ou culturais, envolvendo diferentes atores sociais;
- Utilizar metodologias diversificadas de avaliação com base na análise
dos resultados para intervir na prática pedagógica em diferentes
etapas e modalidades, em contextos escolares e não-escolares;
- Ampliar seu horizonte cultural, na formação continuada, adotando uma
postura crítica e cidadã.',
      '
O egresso deverá ter na composição do seu perfil, dentre outras, as seguintes competências e
habilidades:
Compreender a indissociabilidade do cuidar e educar crianças de zero
até cinco anos, de forma a contribuir para o seu desenvolvimento
integral, considerando as inter-relações que constituem as dimensões
humanas constantes nas atuais recomendações sobre Educação Infantil
de 2009.
 Fortalecer o desenvolvimento e as aprendizagens de crianças do Ensino
Fundamental, assim como daqueles que não tiveram oportunidade de
escolarização na idade própria;
Trabalhar, em espaços escolares e não-escolares, na promoção da
aprendizagem de sujeitos em diferentes fases do desenvolvimento
humano, em diversos níveis e modalidades do processo educativo;
Reconhecer e respeitar as manifestações e necessidades físicas,
cognitivas, emocionais, afetivas dos educandos nas suas relações
individuais e coletivas;
Relacionar as linguagens dos meios de comunicação à educação, nos
processos didático-pedagógicos, demonstrando domínio das
tecnologias de informação e comunicação adequadas ao
desenvolvimento de aprendizagens significativas;
Promover e facilitar relações de cooperação entre a instituição educativa,
a família e a comunidade;
Identificar problemas socioculturais e educacionais com postura
investigativa, integrativa e propositiva em face de realidades complexas,
com vistas a contribuir para a superação de exclusões sociais, étnicoraciais, econômicas, culturais, religiosas, políticas e outras;
 Respeitar as diferenças de natureza ambiental-ecológica, étnico-racial,
de gêneros, faixas geracionais, classes sociais, religiões, necessidades
especiais, escolhas sexuais, entre outras, próprias da consciência da
diversidade.
Participar da gestão das instituições planejando, executando,
acompanhando, implementando e avaliando projetos pedagógicos,
planos e programas educacionais em ambientes escolares e não escolares;
Estudar, aplicar criticamente as diretrizes curriculares e outras
determinações legais que lhe caiba implantar, executar, avaliar e
encaminhar o resultado de sua avaliação às instâncias competentes.
Ser um profissional-cidadão capaz de responder às dinâmicas condições
de perfil exigido para atuação na sociedade, considerando a pluralidade
cultural e tendo a docência como base de sua formação e identidade
profissionais.
',
      3090,
      null
   ),
   (
      9,
      200,
      50,
      'LICENCIADO',
      'historia.multicampi@upe.br',
      'AMBOS',
      338,
      'O campus Garanhuns adota a modalidade de trabalho monográfico como Trabalho de
Conclusão de Curso, demandando uma banca de avaliação, composta por dois professores: o
orientador do trabalho e um professor, que pode ser interno ou externo ao curso de História.',
      'O estágio, enquanto elemento essencial na formação profissional, caracteriza-se como
um momento curricular de natureza pedagógica, tendo como âncora as políticas de formação
profissional, devendo ocorrer em instituições oficiais, unidades de Ensino – espaço onde o/a
O estagiário/a desenvolverá o papel de professor/a partir da articulação teoria/prática.
Na qualidade de profissional do ensino, esse/a estagiário/a deverá ser capaz de
problematizar e propor soluções alternativas no contexto específico de sua prática, pautando-
se nos princípios da ética, da participação, do diálogo, da articulação com os conhecimentos
científicos e filosóficos, construídos ao longo da história da humanidade na perspectiva de
efetivação da interdisciplinaridade. Com efeito, o estágio curricular, num contexto amplo,
deverá concretizar o movimento prática–teoria / prática-ação / reflexão-ação.
Para tanto, o estágio representa um processo de formação profissional dos/as graduandos/as,
consolidando-se a partir das atividades desenvolvidas in locus e que não se restringem apenas
à sala de aula, mas a toda uma dinâmica evocada pela escola, ou seja, ao planejamento, à
avaliação das situações didáticas, à organização administrativa e pedagógica entre outras.
Nesse sentido, o artigo 1º e 2º da LDB, bem como o artigo 3º, XI, e tal como expressa, sob o
conceito no parecer CNE/CP 9/2001, o estágio curricular é o momento de efetivar, sob a
supervisão de um/a profissional experiente, um processo de ensino-aprendizagem, que se
tornará concreto e autônomo quando da profissionalização desse/a estagiário/a. Com isso,
serão promovidas formas internas de debate na instituição de origem, nas instituições campo
de estágio, nos grupos de estágio no sentido de sócia',
      'PRESENCIAL',
      'História',
      'O Curso de Licenciatura em História empenha-se na promoção de um Projeto que
atenda às reais necessidades da formação de profissionais competentes e habilitados para
interagir na sociedade, contribuindo para a solução do problema educacional do Estado.
A Proposta Curricular de História tem como finalidade explicitar os conceitos e as
concepções atualizadas que devem nortear a prática educativa, alicerçada no Projeto Político
Pedagógico da UPE – Campus Mata Norte que se harmoniza na integração do Ensino,
Pesquisa e Extensão. O objetivo desta Proposta está fundamentado nos princípios emanados
das Reformas no campo da Formação de Professores, a partir da LDB 9.394/96, a Lei de
Diretrizes e Bases da Educação Nacional, destacando as discussões mais recentes sobre o
Ensino de História. Com estas perspectivas, são retomados os pontos principais da política
nacional de formação dos profissionais da educação, enfatizando as condições da formação
inicial, a base comum nacional e a intervenção no processo de discussão das Diretrizes
Curriculares para o Curso de Formação.
Nessa proposta, procuramos explicitar:
Concepções de: currículo, desenvolvimento de aprendizagem, metodologia e
avaliação.
A fundamentação teórica de cada disciplina, respaldada nas recentes discussões
das concepções existentes, em acordo com abordagem sócio-interacionista, tendo
como objetivo principal garantir a atualização e a contextualização do saber.
Ressaltar a importância de educadores e educandos no processo de trabalho
coletivo na construção de uma nova prática social.
No que tange aos conteúdos programáticos, objetivou-se:
A inter-relação com o contexto social e a base comum nacional, respeitando a
especificidade e peculiaridade, que devem ser consideradas em cada local, de
acordo com as necessidades e os programas existentes.
Quanto à ação educativa, atentamos:
À dimensão político-social da didática, entendendo que a prática letiva não decorre
no vácuo; antes se desenvolve num meio social concreto, integrada numa política
educativa que envolve alunos provenientes de estratos sociais específicos.
À multidimensionalidade da didática da História, que implica na confluência da
ação educativa das várias vertentes: humanista, político-social, científica e técnica.
A Universidade deve ser parte da sociedade e tem com o todo uma relação
dialética – há uma interferência recíproca que atravessa todas as instituições que
constituem o social.',
      8,
      'NOTURNO',
      'As licenciaturas, de uma forma geral, têm como função a formação de um docente
crítico e capaz de formar indivíduos dentro dos padrões humanísticos e universais que
balizam a construção de valores éticos e morais. Nesse sentido, o formando em Licenciatura
em História será:
Crítico, reflexivo, dialético, permanente construtor e assessor de processos e
percursos de formação humana, voltado para o desenvolvimento integral do educando.
Conhecedor e articulador das diversas e variadas dimensões do conhecimento
histórico, possibilitando e proporcionando intervenções na realidade social, política,
econômica e cultural, facilitando a manutenção de uma sociedade democrática.
Reflexivo acerca dos novos conceitos e inovações nas abordagens históricas.
Facilitador e mediador do conhecimento, observando as diferenças individuais
e dificuldades de aprendizagem, referenciados pelos projetos político-pedagógicos
institucionais e as diretrizes curriculares nacionais da educação.
elaborados
Profissional que respeita e colabora com os projetos e propostas construídos e
coletivamente,
detentores de enfoques
disciplinares, pluri, inter e
transdisciplinares.
Ator no processo de elaboração e construção da prática do ensino de história
numa perspectiva dialética, assimilando e compreendendo a visão histórica como elemento
socializador da pluralidade das relações do homem com o mundo.
Renovador de métodos e técnicas educacionais no ensino de História,
orientando seus fins pedagógicos numa avaliação constante.
Comprometido, político e pedagogicamente, com a renovação constante da
qualidade do ensino, do sistema educacional brasileiro, acompanhando e orientando-se sobre
as tendências pedagógicas que buscam a melhoria da educação, selecionando, renovando e
adaptando-se aos próprios fins didáticos e do meio onde atua.
Profissional participante na elaboração e construção da proposta político-
pedagógica da instituição de ensino onde atua, sendo capaz de detectar, interferir e colaborar
no início e ao longo do processo e nos procedimentos de sua implementação.
Cooperador e facilitador das atividades da escola com a família e comunidade,
sendo também um administrador da heterogeneidade, transmissor cultural e mediador
intercultural na História.
Proporcionador do conhecimento holístico e interdisciplinar realizando
articulação entre teoria e prática na sua atuação histórico-educacional.
Profissional ético nas relações pedagógicas, didáticas, históricas e filosóficas,
respeitador dos sincretismos de pensamento nas relações com funcionários, educadores,
comunidades e instituições de ensino no meio onde atua.
Conhecedor das políticas públicas, voltadas para o atendimento das
necessidades dos envolvidos no processo histórico-educacional.
Comprometido com o respeito às diferenças étnicas, de classe social, de
gênero, de idade, de credo, políticas e partidárias.
Articulador das dimensões epistemológicas, didáticas e de conteúdos
específicos, como condição para a docência de História na Educação Básica.
Proporcionador do desenvolvimento da pesquisa, de produção e difusão do
conhecimento em órgãos de preservação de documentos e construção de políticas e projetos
do patrimônio cultural.
Comprometido com o diálogo multi, inter e transdisciplinar com outras áreas
do conhecimento demarcando e especificando o saber. histórico.',
      'O Curso de Licenciatura em História está pautado numa matriz de seis âmbitos de formação: Cultura Geral e Profissional; Conhecimentos de crianças, adolescentes e adultos; Dimensão Cultural, Social, Política e Econômica da Educação; Conteúdos: objeto de Ensino; Conhecimentos pedagógicos e Conhecimentos advindos da experiência.',
      '3380',
      null
   ),
   (
      10,
      225,
      50,
      'LICENCIADO',
      'letras.multicampi@upe.br',
      'AMBOS',
      339,
      'O discente concluinte somente estará apto a colar grau após o cumprimento total da
carga horária de disciplinas obrigatórias e eletivas previstas em seu perfil; das 225 horas de
atividades complementares; das horas de estágio obrigatório e da defesa do Trabalho de
Conclusão de Curso. Como exigência prévia à defesa pública de seu Trabalho de Conclusão de Curso, o
discente de Licenciatura em Língua Portuguesa e suas Literaturas (modalidades Presencial e
EAD) deverá cursar a disciplina Metodologia da Pesquisa I, no 7º período, e Metodologia da
Pesquisa II, no oitavo e último período. A primeira dará ao aluno as bases teóricas e
metodológicas para a elaboração do projeto de pesquisa monográfica, bem como definirá o(a)
orientador(a). A disciplina do oitavo período, por sua vez, corresponderá ao processo de
orientação e elaboração do Trabalho de Conclusão e sua defesa pública ante uma banca
constituída por três docentes: o(a) orientador(a) e dois (duas) professores(as) avaliadores,
sendo um deles preferencialmente externo ao curso ou à UPE.
A pesquisa, além de relevante, deverá ser individual e obediente aos parâmetros éticos
da pesquisa acadêmica e científica, cumprir as normas da ABNT e empregar a variedade culta
da língua portuguesa.
IMPORTANTE: a banca de defesa do Trabalho de Conclusão de Curso está facultada
aos discentes que tenham cumprido integralmente as demais exigências curriculares previstas
em seu perfil. Em outras palavras, só será permitida a matrícula do discente em Metodologia
da Pesquisa II do oitavo período, se o aluno houver cumprido integralmente todas as
disciplinas obrigatórias, eletivas e horas de Atividades Complementares do 1º ao 7º períodos.',
      'O Estágio Supervisionado, estruturado em ciclos a partir do 5º semestre do curso,
permite a compreensão do fenômeno educativo que acontece na sala de aula e na escola
campo de estágio. As atividades de planejamento e avaliação serão objeto de trabalho dos encontros
pedagógicos realizados na Universidade/Campus Garanhuns.
A pesquisa, a docência, as atividades de extensão e de gestão serão desenvolvidas nas
Instituições Campo de Estágio selecionadas de acordo com o Município de origem dos
graduandos.
Critérios para a seleção das instituições Campo de Estágio
As escolas campo de estágio serão selecionadas atendendo:
aos princípios da legislação educacional vigente;
ao projeto político-pedagógico do Curso;
aos eixos norteadores e aos objetos de análise do Estágio Supervisionado.
Critérios para a organização dos alunos
No Estágio Supervisionado os alunos serão organizados em grupos:
por município de origem;
por escola campo de estágio;
por ação/atividade.
Os grupos de alunos serão constituídos de:
por escola - 12 (doze) no máximo 15 (quinze);
por sala de aula – 03 (três) no máximo 04 (quatro).',
      'PRESENCIAL',
      'Letras - Língua Portuguesa',
      'O Curso de Letras (Modalidades Presencial e EAD) da Universidade de Pernambuco,
campus Garanhuns, com habilitação em Língua Portuguesa e suas Literaturas, tem como
objetivo geral:
Graduar alunos na Licenciatura em Letras – Habilitação Língua Portuguesa e suas
Literaturas, para atuarem como docentes na Educação Básica – séries finais do ensino
fundamental e do ensino médio.
Como objetivos específicos, o graduando deverá:
comprometer-se com sua formação técnica e pedagógica, representando as
diversidades linguísticas e diferenças culturais;
articular o ensino da língua e literatura com as demais áreas do conhecimento em
perspectiva interdisciplinar;
conhecer e pesquisar a prática educacional em diferentes espaços e processos da
construção do conhecimento em leitura e escrita;
comprometer-se como profissional-cidadão, ético, consciente, crítico e tecnicamente
capaz de interferir na construção do projeto pedagógico da instituição em que atua,
bem como na transformação social;
inserir políticas pedagógicas de valorização dos direitos humanos e de inclusão social
dos discentes portadores de autismo;
mediar conhecimentos na formação de leitores críticos e construtores de texto;
conhecer e empregar as diferentes linguagens e suas especificidades;
compreender língua e literatura como elementos construtores da identidade sócio-
político-cultural;
articular os conhecimentos linguísticos e literários através de ferramentas tecnológicas
disponíveis, para a sua formação técnico-científico-pedagógica;
refletir sobre o seu papel de educador como docente e pesquisador contemporâneo na
perspectiva de constante atualização por meio da formação continuada;
dominar conceitos linguísticos e literários por meio dos quais se desenvolvam uma
atitude investigativa que favoreça a construção contínua de conhecimento frente às
novas linguagens e tecnologias.',
      8,
      'NOTURNO',
      'Espera-se que o egresso do curso de Licenciatura em Língua Portuguesa e suas
Literaturas esteja apto a:
Atuar como agente participante crítico no desenvolvimento da política educacional;
Interagir com diversos contextos multiculturais, promovendo intervenções científicas,
técnicas e pedagógicas;
Utilizar recursos tecnológicos como ferramenta que potencializa o processo ensino-
aprendizagem e proporciona uma formação técnico-científico-pedagógica;
Gerenciar seu próprio projeto de formação continuada promovendo uma reflexão
sobre sua prática pedagógica e as realidades educacionais;
Refletir criticamente sobre sua prática pedagógica, seu papel de educador na sala de
aula, na escola e na sociedade, buscando um refazer constante de sua formação;
Participar das propostas pedagógicas da escola de forma ética e consciente
considerando a dinâmica da sociedade e do mercado de trabalho;
Exercer a docência numa perspectiva crítico-reflexiva sobre as realidades sociais para
favorecer o processo de transformação social;
Valer-se da linguagem para melhorar a qualidade de suas relações pessoais, como
expressão de sentimentos, experiências, ideias e opiniões;
Respeitar a diversidade de expressão, acolher e considerar as ideias dos outros.
Produzir conhecimentos de forma interdisciplinar;
Propor e utilizar métodos e técnicas pedagógicas que permitam a transposição do
conhecimento para os diferentes níveis de ensino;
Articular as atividades de ensino com as de pesquisa como uma das formas de
intervenção na realidade;
Expandir o uso da linguagem, adequando-a ao contexto de produção, à sua
funcionalidade, aos interlocutores e ao gênero;
Conhecer as diferentes modalidades e especificidades das linguagens verbal e não
verbal estabelecendo diálogos entre essas linguagens;
Abordar a língua em suas diversas variantes com suas peculiaridades fonológicas,
morfológicas, sintáticas, lexicais, semânticas e pragmáticas;
Intervir interdisciplinarmente no ensino da Língua Portuguesa e suas Literaturas,
tendo como referência as propostas de ensino da Educação Básica;
Situar o ensino de língua e literatura no contexto sócio-histórico, político e filosófico.
Trabalhar a literatura como elemento construtor da identidade sociocultural das
sociedades;
Estabelecer relações entre textos literários de língua portuguesa nos diversos gêneros
textuais considerando as dimensões sociolinguísticas, ideológicas, histórico-culturais
em obras eruditas e populares;
Apresentar os fundamentos que norteiam a leitura e a escrita em contextos
diversificados;
Investigar a Psicogênese da Escrita e sua relação com o processo de escrita do aluno;
Articular os conhecimentos do Latim e de História da Língua Portuguesa ao processo
de evolução da Língua;
Valorizar a leitura como fonte de informação e de acesso aos diferentes universos da
literatura, sendo capazes de recorrer aos diversos materiais escritos;
Criar fórum de debates sobre o ensino-aprendizagem da Língua Portuguesa,
priorizando as questões sociais, políticas e educacionais;
Elaborar projetos que favoreçam a intervenção na realidade sócio-político-econômico-
cultural do ensino de Língua Portuguesa;
Utilizar os recursos da Língua com vistas à revisão de textos técnico-científicos
pertinentes à realidade produtiva e econômica da região;
Utilizar recursos das tecnologias da informação e da comunicação como instrumentos
para a formação técnico-científico-pedagógica no processo de ensino e aprendizagem;
Interagir com diversos contextos multiculturais, promovendo intervenções científicas,
técnicas e pedagógicas;
Propor e utilizar métodos e técnicas pedagógicas que permitam a transposição do
conhecimento para os diferentes níveis de ensino.',
      'O curso de Licenciatura em Letras está pautado numa matriz de seis âmbitos de formação: Cultura Geral e Profissional; Conhecimentos de crianças, adolescentes e adultos; Dimensão Cultural, Social, Política e Econômica da Educação; Conteúdos: objeto de Ensino; Conhecimentos pedagógicos e Conhecimentos advindos da experiência.',
      3390,
      null
);