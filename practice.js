const toDoForm = document.getElementById("todo-form");
const toDoInput = document.querySelector("#todo-form input");
const toDoList = document.getElementById("todo-list");

function paintToDo(newTodo){
    const li = document.createElement("li");
    const span = document.createElement("span");
    li.appendChild(span);
    span.innerText = newTodo;
    toDoList.appendChild(li);
}

function handleToDoSubmit(event){
    event.preventDefault();
    const newTodo = toDoInput.value;
    toDoInput.value = "";
    paintToDo(newTodo);
}

toDoForm.addEventListener("submit", handleToDoSubmit);
//------------------------------------------------------
const clock = document.querySelector("h2#clock");

function getClock(){
    const date = new Date();
    const hours = String(date.getHours()).padStart(2, "0");
    const minutes = String(date.getMinutes()).padStart(2, "0");
    const seconds = String(date.getSeconds()).padStart(2, "0");
    clock.innerText = `${hours}:${minutes}:${seconds}`;
}
getClock()
setInterval(getClock, 1000);
//---------------------------------------------------------


const quotes = [
{
    quote: "When you go through hardships and decide not to surrender, that is strength",
    author: "Arnold Schwarzenegger"
},
{
    quote: "It is kind of fun to do the impossible",
    author: "Walt Disney"
},
{
    quote: "There are better starters than me but I’m a strong finisher",
    author: "Usain Bolt"
},
{
    quote: "Tough times never last, but tough people do",
    author: "Robert H. Schuller"
},
{
    quote: "I’ve failed over and over and over again in my life and that is why I succeed",
    author: "Michael Jordan"
},
{
    quote: "If you don’t get out of the box you’ve been raised in, you won’t understand how much bigger the world is",
    author: "Angelina Jolie"
},
{
    quote: "But I know, somehow, that only when it is dark enough can you see the stars",
    author: "Martin Luther King, Jr"
},
{
    quote: "Grind Hard, Shine Hard",
    author: "Dwayne Johnson"
},
{
    quote: "I didn’t get there by wishing for it or hoping for it, but by working for it",
    author: "Estée Lauder"
},
{
    quote: "We need to think outside of the box for our new product.",
    author: "JunSeok"
}
];

const quote = document.querySelector("#quote span:first-child");
const author = document.querySelector("#quote span:last-child");

const todaysQuote = quotes[Math.floor(Math.random() * quotes.length)];

quote.innerText = todaysQuote.quote;
author.innerText = todaysQuote.author;
//-----------------------------------------------------------------------
const images = [
    "0.jpg", "1.jpg", "2.jpg"
];

const chosenImage = images[Math.floor(Math.random() * images.length)];

const bgImage = document.createElement("img");

bgImage.src = `img/${chosenImage}`;

document.body.appendChild(bgImage);
//-----------------------------------------------




const loginForm = document.querySelector("#login-form");
const loginInput = document.querySelector("#login-form input");
const greeting = document.querySelector("#greeting");
const HIDDEN_CLASSNAME = "hidden";
const USERNAME_KEY = "username";

function onLoginSubmit(event){
    event.preventDefault();
    loginForm.classList.add(HIDDEN_CLASSNAME);
    const username = loginInput.value;
    localStorage.setItem(USERNAME_KEY, username);
    paintGreeting(username);
}


function paintGreeting(username){
    greeting.innerText = `Hello ${username}`;
    greeting.classList.remove(HIDDEN_CLASSNAME);

}

const savedUsername = localStorage.getItem(USERNAME_KEY);

if(savedUsername === null){
    loginForm.classList.remove(HIDDEN_CLASSNAME);
    loginForm.addEventListener("submit", onLoginSubmit);
}  else{
    paintGreeting(savedUsername);
}















