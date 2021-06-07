import ApplicationController from './application_controller.js'

export default class extends ApplicationController {
  beforeCreate(element, reflex) {
    document.getElementById("#success").val = "";
  }

  afterCreate(element, reflex) {
    document.getElementById("#success").val = "Added successfully.";
  }
}

