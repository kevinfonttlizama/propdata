import Rails from "@rails/ujs";
import * as ActiveStorage from "@rails/activestorage";
import "@hotwired/turbo-rails";
import "controllers";
import "bootstrap";
import "@popperjs/core";

console.log("Rails UJS:", Rails);
console.log("ActiveStorage:", ActiveStorage);
console.log("Turbo:", import("@hotwired/turbo-rails"));
console.log("Bootstrap:", import("bootstrap"));
console.log("Popper:", import("@popperjs/core"));

Rails.start();
ActiveStorage.start();
