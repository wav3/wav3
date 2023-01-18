import { Application } from '@hotwired/stimulus';
import '@hotwired/turbo-rails';
import 'bootstrap/dist/js/bootstrap.esm';

const application = Application.start();

application.debug = false;
window.Stimulus = application;
