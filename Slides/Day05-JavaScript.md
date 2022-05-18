% Day 5 on JavaScript
% Sponsored by GOOGLE!

# Review

## Today's class

Today's class will start with fresh code. Today, we'll be exploring the third major part of web development: JavaScript.

## Let's review

What did we talk about in the last class?

- How do we make things move to the right or left of the screen?
- Why do we separate the content from the design of a website?

## All of the tags we learned.

- Tags
    - !DOCTYPE html head meta title body h1 h2 h3 h4 h5 h6 p img a ul ol li link main header footer aside
- Properties
    - class, id
- Ideas
    - CSS, The Box Model (content, padding, border, and margin), floating and clear

## Let's code a fresh website from scratch.

Let's use http://jsfiddle.net to explore some of these items.

- Create a list of items.
- Use CSS to set the "ul/ol" start of the list to use flexbox.

## Play the video for the day

. . .

What did you think?

## My take-away

# Welcome to JavaScript

## What is JavaScript?

In this unit, we are going to cover the third language of this course: JavaScript.

JavaScript started out as (and primary still is) a client-side general-purpose scripting language for the web.

"Client-side" means that all of the work takes place independent of the Internet. You don't use the Internet for JavaScript to work. Everything happens on your computer.

# An Example

## Let's write a simple HTML document.

Follow along in class and create a simple website that contains a title, an h1 tag, and a short paragraph. This will be a new file. We probably won't be doing much CSS today.

## Our first Code.

In the **head** tag of an HTML document, write this:

    <head>
    <!-- other stuff found in the head tag -->

    <script>
    let name = prompt("what is your name?");
    alert("Hello, "+name);
    </script>

    </head>

This simple example will ask for your name, then you will provide it, and the script will greet you by name.

## Example 2

There are many quirks behind JavaScript.

- One is that the entire page needs to load before your JavaScript runs in order for most JavaScript code to work.
    - You can solve this by putting your "script" block after the final "body" tag, but I think that is ugly.
    - You can solve this by putting your code into functions. We are going to do this.

## First, a change to the HTML

Inside of your **body** tag, write this:

    <div id="greeting"></div>

It's an empty div element. So much of the web works with empty div elements. This div's id is "greeting". Remember this. We'll come back to it later.

## Second, a change to the body tag

Change your body tag to this:

    <body onload="letsgo()">

This says "Once the page finishes loading, run the function **letsgo**." What does **letsgo** do? Nothing because we haven't written it yet.

## Third, return to the head tag.

Most JavaScript is in the **head** tag using the **script** tag.

    <head>
    <!-- other stuff found in the head tag -->

    <script>
    function letsgo() {
        let name = prompt("What is your name?");
        document.getElementById("greeting").innerHTML =
            "Hello, "+name;
    }
    </script>

    </head>

## Let's talk.

- All websites in JavaScript are called **document**. It's a singular term. This is an important term to remember.
- In the last code, we declare a function named "letsgo".
- The first line prompted the user for their name.
- The next line searches the document for the id "greeting".
    - You were told to remember "greeting". Here it is.
    - Then JavaScript sets that element's HTML to "Hello, "+name.

## Example 3

Yes. Let's begin with example 3. Change your HTML body to this:

    <form action="javascript:sayHello()">
    What is your first name? <input type="text" id="firstname">
    <input type="submit">
    </form>

    <div id="greeting"></div>

We still have the empty "greeting" div, but now we have an import form. The action of the form is to execute the "sayHello" function. Inside of the text input, we have an id of "firstname".

## Here's our JavaScript

    function sayHello() {
        let name = document.getElementById("firstname").value;
        document.getElementById("greeting").innerHTML =
            "Hello, "+name;
    }

We've changed the "name =" line to get the **firstname** element's value. Everything else is the same. Try it.

## The Magic 8-Ball

The "Magic 8 Ball" is a toy that will say random things when you shake it. This example will require that we create a button to simulate "shaking."

    <button
        type="button"
        onclick="javascript:shake8ball()"
    >
        Shake the Eight Ball
    </button>

    <div id="message"></div>

This button will call "shake8ball()". The "div" element will be where our message will go.

## Defining shake8ball()

Let's define our shake8ball() function.

    <script>
    function shake8ball()
    {
        /*
           Everything about our function
           will go between the { and }.
        */
    }
    </script>

## Roll a number.

The first line of shake8ball will roll a 3-sided die. A 3-sided die will produce the numbers 0, 1, or 2.

    let roll = Math.floor(Math.random() * 3);

Let's go over the parts of this line of code.

- "let roll" defines a new variable named "roll".
- "Math.random()" generates a random number between 0 and 1.
- The "* 3" will multiply that random number by 3. Now it's somewhere between 0 and 3.
- The "Math.floor(...)" will round the random number down. Now it will always be 0, 1, or 2.

## Print a random message.

This code creates a new variable called "message", then (based on roll), set a message.

    let message = "";
    if (roll == 0)
        message = "It will certainly happen.";

    if (roll == 1)
        message = "I do not know. Ask again.";

    if (roll == 2)
        message = "The answer is no.";
 
## Final touch.

Now, we must present that message to the screen.

    document.getElementById("message").innerHTML =
        message;

Only now will the message display on the screen.

## Customize your code.

Let's return to this line.

    let roll = Math.floor(Math.random() * 3);

The 3 represents the number of options. Make this number 10! I want you to add 7 more random statements to your magic 8 ball. You'll need to add "if" statements to your code to cover the new number 4 through 9. Make the messages a combination of serious, silly, or even mysterious (but never mean). Here are some suggestions.

- I don't know, but I see tacos in your future!
- I would avoid the sushi if I was you. It’s a little fishy.
- I was addicted to the hokey pokey but I turned myself around.
- Did you hear about the circus that caught on fire? It was in tents.

# Event Driven Programming

## Event Driven Programming

Event Driven programming is writing code which responds to events, such as button clicks or page loads. There are many events which take place while browsing the web. Here are a few.

- onclick: the user clicks on something.
- ondblclick: the user double clicks on something
- onchange: the text in a field changes.
- onkeydown: the user presses a key on the keyboard.
- onkeyup: the user lifts their finger off of a key.

## Event Driven Programming: The Mouse

Many events involve the mouse. The broswer has the ability to detect changes in your mouse movement and can respond to these changes.

- onmousemove: the mouse moved
- onmouseover: the mouse is over an element
- onmouseout: the mouse has left an element
- onmousedown: any mouse button is clicked
- onmouseup: the user lifts their finger off of a mouse button click

Notice that we can detect when the user clicks and finishes clicking a button. These can happen at different pointer locations on the screen and we can detect both.

## Events with a Mouse

Here's our JavaScript. We have two images which are required. This goes inside `<head>` tag.

    <script>
    let puppy = "puppy.png";
    let coolcat = "coolcat.png";
    let iguana = "iguana.png";
    function setImage(element, myImage) {
        element.setAttribute('src', myImage);
    }
    </script>

## Events with a Mouse

Here is our HTML.

    <img src="iguana.png"
         onmouseover="setImage(this, coolcat);"
         onmouseout="setImage(this, iguana);"
         onmousedown="setImage(this, puppy);"
         onmouseup="setImage(this, iguana);"
    >

## Rest of Class

We will spend the rest of class going over additional examples.

