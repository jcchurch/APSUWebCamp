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

# JavaScript Data Types

## What is let?

The keyword **let** defines a variable which is used to store data. The data lasts for along as your browser tab is open.

## Fundamental Types

Every programming language has fundamental types. This represents the kinds of data that a variable will hold. JavaScript has the following:

- Numbers (0, 13, -456, 3.14159, -7.98, 12.00)
- Strings ("Hello world!", "George Washington", "The quick brown fox jumps over the lazy dog.")
- Booleans (true or false)

There are more types, but they are more advanced.

## Numerical Data

- Numbers are things which can be processed and calculated.
- In JavaScript, all numbers are treated as a floating-point number.
- There is no formal difference between 1 and 1.0.
- There is a difference between 1.0 and "1.0". The first is a number. The second is a string.

## String Data

- String data represents text.
- JavaScript doesn't impose any processing on string data.
- The **prompt** method returns data as a string. If you type numerical symbols to a **prompt**, it is still interpreted as a string consisting of numerical symbols.
    - You can't use a string containing a number in a calculation and expect it to be interpreted as a number.
- Strings can be as short as an empty string of 0 characters or extremely long with many characters.

## Addendum to the last slide.

"You can't use a string containing a number in a calculation and expect it to be interpreted as a number."

It's more complicated than this. Sometimes you can! But you shouldn't rely on this at all. This will often produce unpredictable results and long hours debugging code.

## Boolean Data

- There are infinite numbers and strings and storing them in JavaScript is only limited by the memory of your system.
- There are only two boolean values.
    - true (which must be written using all lowercase letters)
    - false (which must be written using all lowercase letters)
- A boolean is a special value which takes advantage of boolean algebra (which is fundamental to a working computer).

## Converting String to Numbers

The function to convert a string to a number is **parseFloat**.

    let valueA = parseFloat("13.45");
    let valueBStr = prompt("Type any number.");
    let valueB = parseFloat(valueBstr);

## Let's compute some values.

Classic example. Let's prompt for the price of an item and compute that price plus tax. The current tax rate is 0.095%. As usual, we need a way to display the result.

    <div id="pricedisplay"></div>

## Prompt for the price.

Let's ask the user for the price of an item. We are going to put this into a function. You should name variables what they are, but if something is of a type that is really temporary (such as a String), sometimes we might end the variable name with some form of that type (like "Str").

    function computeTax() {
        let priceStr = prompt("Enter the price.");
        let price = parseFloat(priceStr);

The function is continued on the next slide. **parseFloat** will be discussed more in Unit 6.

## Compute the tax and display.

We need now need to compute the total tax. The current tax rate is 0.095%. Let's compute the total and present the result.

        let taxRate = 0.095;
        let total = price + price * taxRate;
        document.getElementById("pricedisplay")
            .innerHTML = "The total price is $" + total;
    }

## Now we need a way to start the code.

For this, let's use a form.

    <form action="javascript:computeTax()">
        <input type="submit" value="Enter price.">
    </form>

That should do it.

## Arithmetic Operators

There are five standard arithmetic operators that you see in JavaScript (and most other languages). It is assumed that you are using only numbers.

    + Addition       2 + 3 is 5
    - Subtraction    9 - 3 is 6
    * Multiplication 4 * 5 is 20
    / Division       15 / 5 is 3
    % Remainder      17 % 4 is 1

## The Concatenation Operator

Concatenation is when you join a string and some other variable. The "other variable" (if it is not a string) will be converted to a string automatically. The concatination operator is "+".

    let word = "race" + "car";

In this example, **word** is now "racecar".

## Pop Quiz

What is each of the following?

    "5" + 2
    "5" - 2

## Pop Quiz

- "5" + 2 is "52". The 2 is implicitly converted to "2" and the two strings are concatenated to "52".
- "5" - 2 is "3". In this case, the "5" is interpreted as the actual number 5 and 5 - 2 is 3.

JavaScript can be extremely tricky sometimes.

## Rest of Class

We will spend the rest of class going over additional examples.


