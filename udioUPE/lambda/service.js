const axios = require('axios');

module.exports = class ServiceApi {
    constructor() {
    this.api = axios.create({
        baseURL: "https://8790-200-133-1-75.ngrok-free.app/"
    });
    }
  
    async listCourses() {
        const response = await this.api.get("cursos");
        return response.data;
    }
    
    async findCourseByName(name) {
         let course;
        let error;
        await this.api.get("cursos/" + name).then((response) => {
            course = response.data
        }).catch((err) => {
            error = err.response.status
        })
        return {course, error};
    }
}