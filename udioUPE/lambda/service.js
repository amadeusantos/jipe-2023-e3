const axios = require('axios');

module.exports = class ServiceApi {
    constructor() {
        this.api = axios.create({
            baseURL: "https://e49e-200-133-1-75.ngrok-free.app/"
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
}
