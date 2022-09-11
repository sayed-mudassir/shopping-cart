// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "bootstrap/dist/js/bootstrap"
import "jquery/dist/jquery"
import "popper.js/dist/esm/popper"

require("jquery")
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")

import '../stylesheets/application'
import './bootstrap_custom.js'


Rails.start()
Turbolinks.start()
ActiveStorage.start()
require("jquery").start()
require("@nathanvda/cocoon")
