// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
const obj = {
  cats:[],
  turn: false,
}
const accions = {
  load_objs() {
    obj.cats = document.getElementsByClassName("cat") 
  },
  clean_class_column(column){
    column.classList.remove(accions.find_key_class(column.className))
  },
  add_class_column(column){
    column.classList.add(obj.turn ? 'circle' : 'square')//accions.find_key_class(column.className)
    obj.turn = !obj.turn 
  },
  find_key_class(class_name){
    if (accions.find_class(class_name,"square")){
      return "square"
    } else if (accions.find_class(class_name,"circle")){
      return "circle"
    }
  },
  column_event(column){
    column.addEventListener("click",() => { 
      accions.clean_class_column(column)
      accions.add_class_column(column)
    })
  },
  find_class(name,class_name){
    return name.includes(class_name)
  },  
}

document.addEventListener("turbolinks:load", function() {
  accions.load_objs()
  for (let index = 0; index < obj.cats.length; index++) {
    var element = obj.cats[index]
    accions.clean_class_column(element)
    accions.column_event(element)
    console.log(element);
  }
});