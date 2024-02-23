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

        let reponse = `A UPE Garanhuns conta com os cursos de ${coursesNames}. Para informações informações especificas fale curso de e nome do curso.`

        return;
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