// 1 Select your search button
// 2 add event listener to each button - current target.id
// 3 reading from the hash base on the ID of the button
// 4 iterate through the value of the key of the hash
// 5 display each of these values on the DOM (html)



const searchMeals = () => {
  const restaurant = document.querySelectorAll(".search-button");
  restaurant.forEach((name) => {
    name.addEventListener("click", (event) => {
      console.log(event)
    });
  });
}

export { searchMeals } ;
  // Remember DOM
  // current target - classList.toggle
  // 
