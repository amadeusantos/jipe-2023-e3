module.exports = class MakerResponse {

    constructor(api) {
        this.api = api;
    }

    MSG_PLUS_INFOR() {
        return "Você deseja mais informações?";
    }

    async listCoursesResponse() {
        const courses = await this.api.listCourses();
        let coursesNames = '';
        for (let i = 0; i < courses.length; i++) {
            if (i === 0) {
                coursesNames = `${courses[i].name}`;
            } else if (i !== courses.length - 1) {
                coursesNames = `${coursesNames}, ${courses[i].name}`;
            } else {
                coursesNames = `${coursesNames} e ${courses[i].name}.`;
            }
        }

        let response = `A UPE Garanhuns conta com os cursos de ${coursesNames}. Para informações informações especificas fale curso de e nome do curso.`

        return response;
    }
    
    async listFaqResponse(){
        const faq = await this.api.listFaq();
        let nomes = '';
        for (let i = 0; i < faq.length; i++){
            if(i === 0){
                nomes = `${faq[i].nome}`;
            } else if (i !== faq.length - 1){
                nomes = `${nomes}, ${faq[i].nome}`;
            } else {
                nomes = `${nomes} e ${faq[i].nome}`;
            }
        }
        
        let response = `O FAQ do AudioUPE consegue responder as seguintes questões: ${nomes}. Para informações específicas informe a sua dúvida.`;
        
        return response;
    }
    
    async listDisciplinesResponse(course, period){
        const disciplines = await this.api.ListDisciplinesByCouseAndPeriod("name", course, period);
        let disciplineNames = '';
        
        for (let i = 0; i < disciplines.length; i++) {
            if (i === 0) {
                disciplineNames = `${disciplines[i].name}`;
            } else if (i !== disciplines.length - 1) {
                disciplineNames = `${disciplineNames}, ${disciplines[i].name}`;
            } else {
                disciplineNames = `${disciplineNames} e ${disciplines[i].name}`;
            }
        }
        
        let response = `As disciplinas do curso ${course} no período ${period} são: ${disciplineNames}. Para mais informações, por favor, informe a disciplina desejada.`;
        
        return response;
        
    }

    async aboutCourseResponse(name) {
        const { course, error } = await this.api.findCourseByName(name);
        if (error) {
            let response = `Não foi encontrado ${name} você quis dizer `
            const courses = await this.api.listCourses();
            for (let i = 0; i < courses.length; i++) {
                if (i === 0) {
                    response = `${response}, ${courses[i].name}`;
                } else if (i !== courses.length - 1) {
                    response = `${response}, ${courses[i].name}`;
                } else {
                    response = `${response} ou ${courses[i].name}.`;
                }
            }
            return response;
        }

        let response = `O curso de ${course.name} possui duração de ${course.periods} períodos e com ${course.annualVacancies} vagas anuais ofertadas. ${this.messageEndInformationResponse({})}`;

        return response;
    }
    
    async aboutFaqItemResponse(name){
        const {faq, error} = await this.api.findFaqByName(name);
        if(error){
            let response = `Não é possível responder essa questão. Porém consigo responder as seguintes situações: `;
            const faqs = await this.api.listFaq();
            for(let i = 0; i < faqs.length; i ++){
                if(i === 0){
                    response = `${response}, ${faqs[i].nome}`;
                } else if (i !== faqs.length - 1){
                    response =  `${response}, ${faqs[i].nome}`;
                } else {
                    response = `${response} ou ${faqs[i].nome}.`;
                }
            }
            return response;
        }
        
        let response = faq.resposta;
        
        return response;
    }

    async courseInformationResponse(information, name, page = 0) {
        if (!name) {
            return "Nenhum curso selecionado. fale por exemplo curso de letras."
        }
        const { course, error } = await this.api.findCourseByName(name);

        if (error) {
            let response = `Não foi encontrado ${name} você quis dizer `
            const courses = await this.api.listCourses();
            for (let i = 0; i < courses.length; i++) {
                if (i === 0) {
                    response = `${response}, ${courses[i].nome}`;
                } else if (i !== courses.length - 1) {
                    response = `${response}, ${courses[i].nome}`;
                } else {
                    response = `${response} ou ${courses[i].nome}.`;
                }
            }
            return response;
        }
        return { objectives: course[information][page], size: course[information].length };
    }
    
    async aboutProfessorResponse(name, course){
        const {professor, error} = await this.api.findProfessorByNameAndCourse(name, course);
        
        if(error) {
            let response = `${name} não faz parte dos docentes do curso de ${course}. Informe outro professor ou professora`;
            return response;
        }
        
        const professorTitulo = professor.degree.toLowerCase();
        
        const areasOfExpertise = professor.areasOfExpertise;
        const lastCommaIndex = areasOfExpertise.lastIndexOf(',');
        const areasOfExpertiseFormatted = areasOfExpertise.substring(0, lastCommaIndex) + ' e' + areasOfExpertise.substring(lastCommaIndex + 1);

        let response = `O professor ${professor.name} faz parte do curso de ${course}, atualmente é ${professorTitulo} na área de ${professor.field} e tem como principal foco as áreas de ${areasOfExpertiseFormatted}.`;
        
        return response;
    }
    
    async aboutDisciplineResponse(name, course){
        const {discipline, error} = await this.api.findDisciplineByNameAndCourse(name, course);
        
        if(error || discipline === null){
            let respose = `Essa disciplina não faz parte do ${course}`;
        }
        
        const totalWorkload = discipline.theoreticalWorkload + discipline.practicalWorkload;
        let response = `${discipline.name} é uma disciplina do curso de ${course}, faz parte do ${discipline.period} período e possui carga horária total de ${totalWorkload} horas. Tem como objetivo geral ${discipline.generalObjective}.
                        Além disso posso falar os objetivos específicos, a ementa, bibliografia e o conteúdo programático da disciplina.`;

        return response;
    }
    
    async disciplineInformationResponse(information, course, name, page = 0){
        if (!name) {
            return "Nenhum disciplina selecionada. fale por exemplo estruturas de dados."
        }
        const { discipline, error } = await this.api.findDisciplineByNameAndCourse(name, course);

        // if (error) {
        //     let response = `Não foi encontrado ${name} você quis dizer `
        //     const courses = await this.api.listCourses();
        //     for (let i = 0; i < courses.length; i++) {
        //         if (i === 0) {
        //             response = `${response}, ${courses[i].nome}`;
        //         } else if (i !== courses.length - 1) {
        //             response = `${response}, ${courses[i].nome}`;
        //         } else {
        //             response = `${response} ou ${courses[i].nome}.`;
        //         }
        //     }
        //     return response;
        // }
        return { objectives: discipline[information][page], size: discipline[information].length };
    }
    
    async disciplineProgramResponse(course, name){
        const { discipline, error } = await this.api.findDisciplineByNameAndCourse(name, course);
        
        let response = `${discipline.program}`;
        return response;
    }

    messageEndInformationResponse({ objectivesPage, undergraduateProfilePage, skillsPage, internshipPage, finalPaperPage }) {
        let response = objectivesPage === undefined && undergraduateProfilePage === undefined && skillsPage === undefined && internshipPage === undefined && finalPaperPage !== undefined ?
            "Você pode perguntar informações específicas como " : "Você pode perguntar outras informações específicas como ";

        if (objectivesPage === undefined) response += "objetivos, ";
        if (undergraduateProfilePage === undefined) response += "perfil dos egressos, ";
        if (skillsPage === undefined) response += "habilidades e competências, ";
        if (internshipPage === undefined) response += "funcionamento do estágio, ";
        if (finalPaperPage === undefined) response += "trabalho de conclusão, ";

        response += "diciplinas e docentes do curso.";
        return response;
    }
    
    


}

