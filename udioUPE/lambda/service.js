const axios = require('axios');

module.exports = class ServiceApi {
    constructor() {
        this.api = axios.create({
            baseURL: "https://3c43-143-202-126-205.ngrok-free.app/"
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
}