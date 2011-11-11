package eoffice

class SystemController {

    def index() { }

    def login() {
    	render(contentType:"text/json") {
    		success = true
		}
    }
}
