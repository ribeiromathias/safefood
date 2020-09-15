// 1 Select your search button
// 2 add event listener to each button - current target.id
// 3 reading from the hash base on the ID of the button
// 4 iterate through the value of the key of the hash
// 5 display each of these values on the DOM (html)



const searchMeals = () => {
  const restaurant = document.querySelectorAll(".search-button");
  restaurant.forEach((name) => {
    name.addEventListener("click", (event) => {
      const button = event.currentTarget;
      const list = document.getElementById("list");
      const cards = [...list.children];
      cards.forEach( node => {
        if (node.dataset.restaurantId === button.dataset.restaurantId) {
          node.style.display = "block"
        } else {
          node.style.display = "none"
        }
      });
    });
  });
};


export { searchMeals } ;


  // // const searchMeals = () => {
  // const restaurant = document.querySelectorAll(".search-button");
  // restaurant.forEach((name) => {
  //   name.addEventListener("click", (event) => {
  //     // coming from: <ul id="list">
  //     const list = document.getElementById("list")
  //     list.innerHTML = "";
  //     // hashkeyname is the id of the button, from the current target event 
  //     // (that comes from filtered_meals (hash) and
  //     //  the key is the name of the restaurant)
  //     const hashKeyName = event.currentTarget.id;
  //     // hash.name of restaurant --> @filteredMeals.hashKeyName  --> HOW TO READ RAILS VARIABLE ON JS
  //     const values of restaurant  = @filteredMeals.hashKeyName;
  //     // find the meals for that name of restaruant
  //     // print the array and display it inside html (ln 22)
  //     list.insertAdjacentHTML("beforeend", '<li>${meals}</li>');
  //   });
  // }