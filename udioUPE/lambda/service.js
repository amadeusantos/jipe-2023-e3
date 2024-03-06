const axios = require('axios');

module.exports = class ServiceApi {
    constructor() {
        this.api = axios.create({
            baseURL: "https://80b4-138-0-27-112.ngrok-free.app/"
        });
    }

    async listCourses() {
        const response = await this.api.get("courses");
        return response.data;
    }

    async findCourseByName(name) {
        let course;
        let error;
        await this.api.get("courses/" + name).then((response) => {
            course = response.data
        }).catch((err) => {
            error = err.response.status
        })
        return { course, error };
    }
    
    async listFaq(){
        const response = await this.api.get("faq");
        return response.data;
    }
    
    async findFaqByName(name){
        let faq;
        let error;
        await this.api.get("faq/" + name).then((response) => {
            faq = response.data
        }).catch((err) => {
            error = err.response.status
        })
        return { faq, error };
    }
    
    async findProfessorByNameAndCourse(name, course){
        let professor;
        let error;
        await this.api.get("professors/" + course + "/" + name).then((response) => {
            professor = response.data
        }).catch((err) => {
            error = err.response.status
        })
        return { professor, error };
    }
    
    async ListDisciplinesByCouseAndPeriod(order = "name", course = null, period = null){
        const params = {order, course, period};
        const response = await this.api.get("/disciplines", {params});
        return response.data;
    }
    
    async findDisciplineByNameAndCourse(name, course){
        let discipline;
        let error;
        await this.api.get("disciplines/" + course + "/" + name).then((response) => {
            discipline = response.data
        }).catch((err) => {
            error = err.response.status
        })
        return {discipline, error}
    }
}
