/* *
 * This sample demonstrates handling intents from an Alexa skill using the Alexa Skills Kit SDK (v2).
 * Please visit https://alexa.design/cookbook for additional examples on implementing slots, dialog management,
 * session persistence, api calls, and more.
 * */
const Alexa = require('ask-sdk-core');

const Service = require('./service.js');

const Response = require('./response.js');

const serviceApi = new Service();

const makerResponse = new Response(serviceApi);

const LaunchRequestHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'LaunchRequest';
    },
    handle(handlerInput) {
        const speakOutput = `Olá, Bem vindo ao áudio UPE. O que você gostaria de saber sobre a UPE?`;

        const repromptOutput = `Não entendi, você deseja informação sobre cursos, disciplinas ou serviços disponibilizados?`;

        return handlerInput.responseBuilder
            .speak(speakOutput)
            .reprompt(repromptOutput)
            .getResponse();
    }
};

const ListCoursesIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'ListCoursesIntent';
    },
    async handle(handlerInput) {

        const speakOutput = await makerResponse.listCoursesResponse();

        return handlerInput.responseBuilder
            .speak(speakOutput)
            .withShouldEndSession(false)
            .getResponse();
    }
}

const AboutCourseIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'AboutCourseIntent';
    },
    async handle(handlerInput) {
        const course = handlerInput.requestEnvelope.request.intent.slots.course.value;
        const sessionAttributes = handlerInput.attributesManager.getSessionAttributes();
        sessionAttributes.course = course;
        handlerInput.attributesManager.setSessionAttributes(sessionAttributes);

        const speakOutput = await makerResponse.aboutCourseResponse(course);

        return handlerInput.responseBuilder
            .speak(speakOutput)
            .withShouldEndSession(false)
            .getResponse();
    }
};

const CourseObjectiveIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'CourseObjectiveIntent';
    },
    async handle(handlerInput) {
        const sessionAttributes = handlerInput.attributesManager.getSessionAttributes();

        let page = Number(sessionAttributes.objectivesPage) || 0;
        let response = "";
        if (page === 0 || handlerInput.requestEnvelope.request.intent.confirmationStatus === 'CONFIRMED') {

            const { objectives, size } = await makerResponse.courseInformationResponse('objectives', sessionAttributes.course, page);
            response = objectives + " ";



            if (page + 1 < size) {
                sessionAttributes.objectivesPage = page + 1;
                return handlerInput.responseBuilder.speak(response + makerResponse.MSG_PLUS_INFOR())
                    .addConfirmIntentDirective({ name: 'CourseObjectiveIntent', confirmationStatus: 'NONE', slots: handlerInput.requestEnvelope.request.intent.slots })
                    .withShouldEndSession(false).getResponse();
            }
        }
        sessionAttributes.objectivesPage = 0;
        return handlerInput.responseBuilder
            .speak(response + makerResponse.messageEndInformationResponse(sessionAttributes))
            .withShouldEndSession(false)
            .getResponse();

    }
};

const CourseUndergraduateProfileIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'CourseUndergraduateProfileIntent';
    },
    async handle(handlerInput) {
        const sessionAttributes = handlerInput.attributesManager.getSessionAttributes();

        let page = Number(sessionAttributes.undergraduateProfilePage) || 0;
        let response = "";
        if (page === 0 || handlerInput.requestEnvelope.request.intent.confirmationStatus === 'CONFIRMED') {

            const { objectives, size } = await makerResponse.courseInformationResponse('UndergraduateProfile', sessionAttributes.course, page);
            response = objectives + " ";



            if (page + 1 < size) {
                sessionAttributes.undergraduateProfilePage = page + 1;
                return handlerInput.responseBuilder.speak(response + makerResponse.MSG_PLUS_INFOR())
                    .addConfirmIntentDirective({ name: 'CourseUndergraduateProfileIntent', confirmationStatus: 'NONE', slots: handlerInput.requestEnvelope.request.intent.slots })
                    .withShouldEndSession(false).getResponse();
            }
        }

        sessionAttributes.undergraduateProfilePage = 0;
        return handlerInput.responseBuilder
            .speak(response + makerResponse.messageEndInformationResponse(sessionAttributes))
            .withShouldEndSession(false)
            .getResponse();
    }
}

const CourseSkillsIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'CourseSkillsIntent';
    },
    async handle(handlerInput) {
        const sessionAttributes = handlerInput.attributesManager.getSessionAttributes();

        let page = Number(sessionAttributes.skillsPage) || 0;
        let response = "";
        if (page === 0 || handlerInput.requestEnvelope.request.intent.confirmationStatus === 'CONFIRMED') {

            const { objectives, size } = await makerResponse.courseInformationResponse('skills', sessionAttributes.course, page);
            response = objectives + " ";



            if (page + 1 < size) {
                sessionAttributes.skillsPage = page + 1;
                return handlerInput.responseBuilder.speak(response + makerResponse.MSG_PLUS_INFOR())
                    .addConfirmIntentDirective({ name: 'CourseSkillsIntent', confirmationStatus: 'NONE', slots: handlerInput.requestEnvelope.request.intent.slots })
                    .withShouldEndSession(false).getResponse();
            }
        }

        sessionAttributes.skillsPage = 0;
        return handlerInput.responseBuilder
            .speak(response + makerResponse.messageEndInformationResponse(sessionAttributes))
            .withShouldEndSession(false)
            .getResponse();
    }
}

const CourseInternshipIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'CourseInternshipIntent';
    },
    async handle(handlerInput) {
        const sessionAttributes = handlerInput.attributesManager.getSessionAttributes();

        let page = Number(sessionAttributes.internshipPage) || 0;
        let response = "";
        if (page === 0 || handlerInput.requestEnvelope.request.intent.confirmationStatus === 'CONFIRMED') {

            const { objectives, size } = await makerResponse.courseInformationResponse('internship', sessionAttributes.course, page);
            response = objectives + " ";



            if (page + 1 < size) {
                sessionAttributes.internshipPage = page + 1;
                return handlerInput.responseBuilder.speak(response + makerResponse.MSG_PLUS_INFOR())
                    .addConfirmIntentDirective({ name: 'CourseInternshipIntent', confirmationStatus: 'NONE', slots: handlerInput.requestEnvelope.request.intent.slots })
                    .withShouldEndSession(false).getResponse();
            }
        }

        sessionAttributes.internshipPage = 0;
        return handlerInput.responseBuilder
            .speak(response + makerResponse.messageEndInformationResponse(sessionAttributes))
            .withShouldEndSession(false)
            .getResponse();
    }
}

const CourseFinalPaperIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'CourseFinalPaperIntent';
    },
    async handle(handlerInput) {
        const sessionAttributes = handlerInput.attributesManager.getSessionAttributes();

        let page = Number(sessionAttributes.finalPaperPage) || 0;
        let response = "";
        if (page === 0 || handlerInput.requestEnvelope.request.intent.confirmationStatus === 'CONFIRMED') {

            const { objectives, size } = await makerResponse.courseInformationResponse('finalPaper', sessionAttributes.course, page);
            response = objectives + " ";



            if (page + 1 < size) {
                sessionAttributes.finalPaperPage = page + 1;
                return handlerInput.responseBuilder.speak(response + makerResponse.MSG_PLUS_INFOR())
                    .addConfirmIntentDirective({ name: 'CourseFinalPaperIntent', confirmationStatus: 'NONE', slots: handlerInput.requestEnvelope.request.intent.slots })
                    .withShouldEndSession(false).getResponse();
            }
        }

        sessionAttributes.finalPaperPage = 0;
        return handlerInput.responseBuilder
            .speak(response + makerResponse.messageEndInformationResponse(sessionAttributes))
            .withShouldEndSession(false)
            .getResponse();
    }
}

// const RequestCourseHandler = {
//     canHandle(handlerInput) {
//         return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
//             && Alexa.getIntentName(handlerInput.requestEnvelope) === 'AboutDisciplineIntent'
//             && Alexa.getIntentName(handlerInput.requestEnvelope) === 'AboutProfessorIntent'
//             && handlerInput.requestEnvelope.request.intent.slots.course.value;
//     },
//     handle(handlerInput) {
//         const speakOutput = `De qual curso você desejá saber essa informação?`;

//         return handlerInput.responseBuilder
//             .speak(speakOutput).withShouldEndSession(false)
//             .getResponse();
//     }
// }

const AboutProfessorIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'AboutProfessorIntent';
    },
    handle(handlerInput) {
        const professor = handlerInput.requestEnvelope.request.intent.slots.professor.value;
        const sessionAttributes = handlerInput.attributesManager.getSessionAttributes();

        const speakOutput = `${professor}, professor do curso de ${sessionAttributes.course}`;

        return handlerInput.responseBuilder
            .speak(speakOutput).withShouldEndSession(false)
            .getResponse();
    }
}

const AboutDisciplineIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'AboutDisciplineIntent';
    },
    handle(handlerInput) {
        const discipline = handlerInput.requestEnvelope.request.intent.slots.discipline.value;
        const sessionAttributes = handlerInput.attributesManager.getSessionAttributes();

        const speakOutput = `${discipline}, professor do curso de ${sessionAttributes.course}`;

        return handlerInput.responseBuilder
            .speak(speakOutput).withShouldEndSession(false)
            .getResponse();
    }
}

const InformationIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'InformationIntent';
    },
    handle(handlerInput) {
        const information = handlerInput.requestEnvelope.request.intent.slots.information.value;
        const sessionAttributes = handlerInput.attributesManager.getSessionAttributes();

        const speakOutput = `${information}, ${sessionAttributes.course}`;

        return handlerInput.responseBuilder
            .speak(speakOutput)
            .getResponse();
    }
};

const HelloWorldIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'HelloWorldIntent';
    },
    handle(handlerInput) {
        const speakOutput = 'Hello World!';

        return handlerInput.responseBuilder
            .speak(speakOutput)
            //.reprompt('add a reprompt if you want to keep the session open for the user to respond')
            .getResponse();
    }
};

const HelpIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'AMAZON.HelpIntent';
    },
    handle(handlerInput) {
        const speakOutput = 'You can say hello to me! How can I help?';

        return handlerInput.responseBuilder
            .speak(speakOutput)
            .reprompt(speakOutput)
            .getResponse();
    }
};

const CancelAndStopIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && (Alexa.getIntentName(handlerInput.requestEnvelope) === 'AMAZON.CancelIntent'
                || Alexa.getIntentName(handlerInput.requestEnvelope) === 'AMAZON.StopIntent');
    },
    handle(handlerInput) {
        const speakOutput = `Se precisar de mais informações é só chamar áudio UPE! Até a próxima.`;
        // <say-as interpret-as="interjection"></say-as>
        return handlerInput.responseBuilder
            .speak(speakOutput)
            .getResponse();
    }
};
/* *
 * FallbackIntent triggers when a customer says something that doesn’t map to any intents in your skill
 * It must also be defined in the language model (if the locale supports it)
 * This handler can be safely added but will be ingnored in locales that do not support it yet 
 * */
const FallbackIntentHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest'
            && Alexa.getIntentName(handlerInput.requestEnvelope) === 'AMAZON.FallbackIntent';
    },
    handle(handlerInput) {
        const speakOutput = 'Sorry, I don\'t know about that. Please try again.';

        return handlerInput.responseBuilder
            .speak(speakOutput)
            .reprompt(speakOutput)
            .getResponse();
    }
};
/* *
 * SessionEndedRequest notifies that a session was ended. This handler will be triggered when a currently open 
 * session is closed for one of the following reasons: 1) The user says "exit" or "quit". 2) The user does not 
 * respond or says something that does not match an intent defined in your voice model. 3) An error occurs 
 * */
const SessionEndedRequestHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'SessionEndedRequest';
    },
    handle(handlerInput) {
        console.log(`~~~~ Session ended: ${JSON.stringify(handlerInput.requestEnvelope)}`);
        // Any cleanup logic goes here.
        return handlerInput.responseBuilder.getResponse(); // notice we send an empty response
    }
};
/* *
 * The intent reflector is used for interaction model testing and debugging.
 * It will simply repeat the intent the user said. You can create custom handlers for your intents 
 * by defining them above, then also adding them to the request handler chain below 
 * */
const IntentReflectorHandler = {
    canHandle(handlerInput) {
        return Alexa.getRequestType(handlerInput.requestEnvelope) === 'IntentRequest';
    },
    handle(handlerInput) {
        const intentName = Alexa.getIntentName(handlerInput.requestEnvelope);
        const speakOutput = `You just triggered ${intentName}`;

        return handlerInput.responseBuilder
            .speak(speakOutput)
            //.reprompt('add a reprompt if you want to keep the session open for the user to respond')
            .getResponse();
    }
};
/**
 * Generic error handling to capture any syntax or routing errors. If you receive an error
 * stating the request handler chain is not found, you have not implemented a handler for
 * the intent being invoked or included it in the skill builder below 
 * */
const ErrorHandler = {
    canHandle() {
        return true;
    },
    handle(handlerInput, error) {
        const speakOutput = 'Sorry, I had trouble doing what you asked. Please try again.';
        console.log(`~~~~ Error handled: ${JSON.stringify(error)}`);

        return handlerInput.responseBuilder
            .speak(speakOutput)
            .reprompt(speakOutput)
            .getResponse();
    }
};

/**
 * This handler acts as the entry point for your skill, routing all request and response
 * payloads to the handlers above. Make sure any new handlers or interceptors you've
 * defined are included below. The order matters - they're processed top to bottom 
 * */
exports.handler = Alexa.SkillBuilders.custom()
    .addRequestHandlers(
        LaunchRequestHandler,
        ListCoursesIntentHandler,
        AboutCourseIntentHandler,
        CourseObjectiveIntentHandler,
        CourseUndergraduateProfileIntentHandler,
        CourseSkillsIntentHandler,
        CourseInternshipIntentHandler,
        CourseFinalPaperIntentHandler,
        AboutProfessorIntentHandler,
        AboutDisciplineIntentHandler,
        InformationIntentHandler,
        HelloWorldIntentHandler,
        HelpIntentHandler,
        CancelAndStopIntentHandler,
        FallbackIntentHandler,
        SessionEndedRequestHandler,
        IntentReflectorHandler)
    .addErrorHandlers(
        ErrorHandler)
    .withCustomUserAgent('sample/hello-world/v1.2')
    .lambda();