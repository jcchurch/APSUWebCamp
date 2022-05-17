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

## Simple Math



## Rest of Class

We will spend the rest of class going over additional examples.


