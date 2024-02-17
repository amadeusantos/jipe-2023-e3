module.exports = class MakerResponse {
    constructor(api) {
    this.api = api;
  }
  
  async listCoursesResponse() {
      const courses = await this.api.listCourses();
        let coursesNames = '';
        for (let i = 0; i < courses.length; i++) {
            if (i === 0) {
                coursesNames = `${courses[i].nome}`;
            } else if(i !== courses.length - 1) {
                coursesNames = `${coursesNames}, ${courses[i].nome}`;
            } else {
                coursesNames = `${coursesNames} e ${courses[i].nome}.`;
            }
        }
        
        return `A UPE Garanhuns conta com os cursos de ` + coursesNames;
  }
  
  async aboutCourseResponse(name) {
      const { course, error } = await this.api.findCourseByName(name);
      if (error) {
          let response = `Não foi encontrado ${name} você quis dizer `
        const courses = await this.api.listCourses();
        for (let i = 0; i < courses.length; i++) {
            if (i === 0) {
                response = `${response}, ${courses[i].nome}`;
            } else if(i !== courses.length - 1) {
                response = `${response}, ${courses[i].nome}`;
            } else {
                response = `${response} ou ${courses[i].nome}.`;
            }
        }
        return response;
      }
      
      const coordenador = course.coordenador.split(' ');
      
      let response = `O curso de ${course.nome} possui duração de ${course.periodos} períodos, com ${course.vagasAnual} vagas anuais ofertadas e atualmente é coordenado por ${coordenador[0]} ${coordenador[coordenador.length - 1]}.`
      
      return response;
  }
  
  async courseObjectiveResponse(name) {
      
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
            } else if(i !== courses.length - 1) {
                response = `${response}, ${courses[i].nome}`;
            } else {
                response = `${response} ou ${courses[i].nome}.`;
            }
        }
        return response;
      }
       return course.descricao;
  }
  
  
}