% Day 4 on HTML Menus
% Sponsored by GOOGLE!

# Review

## Today's class

Today's class will start with yesterday's code. Try to find it. Today, we'll be exploring some more advanced features of HTML and CSS.

- Links have so many features that need exploring.
- Libraries to create unique icons on the screen.

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

- Create a main element with some content.
- Create an aside element with some content.
- Make the main float to the left with CSS.
- Make the aside float to the right with CSS.
- Make all content in the boxes centered.

## Play the video for the day

. . .

What did you think?

## My take-away

There are a lot of people who will use deception to get you to do things:

- Click links that you shouldn't click.
- Open attachments that you shouldn't open.
- Share content with false information that you shouldn't share.
- Buy things that you don't need (or even want).

These are lifelong problems that happen to any person of any age.

## My take-away

- Always check the original source material.
- If you can't find the original source, look for fact checkers.
    - These are people who dig into a story and look for verifying details.
    - They should have a neutral tone about wanting a story to be real or not.
    - If people who claim to be fact-checkers try to elicit some emotion, they probably are trying to sway you. Seek another viewpoint.
- If you can't find a fact checker, don't share the story.
    - Waiting for more information is always better than getting something wrong.

# Links

## Links

You can manipulate almost anything in CSS, even links. There are five properties of a link. In CSS, each state of a link is named beginning with the ":" symbol.

- :link
    - This is an unvisited link (you've never been here before). By default, this is blue.
- :visited
    - This is a visited link (you've been here before). By default, this is purple.
- :hover
    - This is a link that your mouse pointer is current hovering over it. By default, this has no style associated with it. But you can change that if you like!
- :focus
    - This is a link that has been selected by a screen reader or the tab key, but not yet been clicked.
- :active
    - This is a link during the act of being clicked.

## CSS Links

Go to http://jsfiddle.net and type this into the HTML section.

    <a href="http://edu.google.edu">Google Education</a>

Type this into the CSS section.

    a:link { color: red; }
    a:visited { color: blue; }
    a:hover { font-size: 200%; color: pink; }
    a:focus { font-size: 200%; color: green; }
    a:active { font-size: 250%; color: purple; }

## CSS Links

We want you to play with the five different ways you can interact with a link (ignore it, visit it, hover, focus, and actively click) before moving on.

# Fonts

## Web Safe Fonts

- For this next part, it would be best if you did a Google search for "web safe fonts".
    - This is the website site we want you to see.
    - https://www.w3schools.com/cssref/css_websafe_fonts.asp
- Fonts are a tricky subject: in order to see text using a particular font, your computer must have the font.
    - Not every computer has the same fonts installed.
- There are a limited number of fonts that most computers have. These are called "web safe fonts".
- The CSS property that controls fonts is called the `font-family` property. Let's see it in action.

## Testing Web Safe Fonts

Go to http://jsfiddle.net and type this into the HTML section.

    <p>This is regular text.</p>
    <p id="special">This is special text.</p>

When you run this code, both sentences will look the same on the screen.

## Testing Web Safe Fonts

Type this into the CSS section.

    p {
        font-size: 200%;
    }
    #special {
        font-family: Arial, sans-serif;
    }

You'll notice that there are two fonts mentioned! That's because websites need backup fonts. Here, we are testing Arial, but "sans-serif" is our backup.

## Testing Web Safe Fonts

In the last example, we tested "Arial", but there are many others.

- Verdana
- Helvetica
- Tahoma
- Georgia

We want you to test at least three more font families before moving on. In each example, change "Arial", but keep "sans-serif" the same.

## An External Library for Fonts

But what if you want more fonts? Crazy fonts? Fun fonts? Serious fonts?

We are going to introduce our first **external library**. An **external library** gives us the ability to do things that would normally take us a long time to develop on our own. Nearly all professional programmers use external libraries to speed up development because programming is slow and its better when we all work together.

Go to this website: https://fonts.google.com

## Google Fonts

Google has a large collection of special fonts, but they require a little extra work to get them on your website. They don't work just by typing them into your CSS code.

When seaching for fonts, I found a neat one called "Emblema One." Maybe you can find a neat font too.

## Finding the Perfect Font

When you find a font that you like, look for the words "Select this style". Two textboxes will appear.

- The first has the external library code in it. Copy and past this code into the HTML section of your jsfiddle page. This normally goes in the `<head>` tag on your website.
- The second textbook has the `font-family` code. Copy this line over your `font-family` line in the CSS section on jsfiddle.

Keep this tab open to your font. We're going to try to use it later.

## An External Library for icons

Google has another external library for icons. Icons aren't images and don't have the same limitations as images. They scale and you can change their color with CSS. We can find the icons on the same Google Fonts website.

To find the external library, you'll need to click on "Developer Guide" and then scroll down to the section "Setup Method 1. Using via Google Fonts".

The library provided only supports "Filled" icons, so you'll need to set the search to the "Filled" icons.

## Try this out.

Here is the library that I added to my HTML section (or `<head>` section of your website). (Don't type this in. Try to find it on the Google website.)

    <link href=
    "https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">

And here's the code to get a home icon to appear:

    <span class="material-icons-outlined">home</span>

What's great is that these icons will look great at any scale.

# Menus

## Menus

Our goal in this next project is to build a menu for our website. To make this fully work, I added our Google Font library and our Google Icons library to our `<head>` section of our website from yesterday. If you can't find your website from yesterday, you can use our starter code.

## An unordered list of links

We need an unordered list of links.

    <nav>
    <ul>
    <li><a href="http://apsu.edu">APSU</a></li>
    <li><a href="https://google.com">Google</a></li>
    <li><a href="http://freerice.com">Free Rice</a></li>
    </ul>
    </nav>

## Apply some simple CSS

    nav ul {
      list-style-type: none;
      display: flex;
      background: darkred;
      border-radius: 20px;
    }

We recommend that you type each property starting with "list-style-type: none;" and test what it does before moving on to the next line. There are four lines to test. This is the first time to see two of these properties. Which two are new? What will happen?

## Add more code to "li".

    nav li {
      padding: 20px;
      font-family: Verdana;
      color: AntiqueWhite;
      font-size: 150%;
      text-decoration: none;
    }

You may notice that we are using "nav ul" and "nav li". This means that we only manipulate the "ul" and "li" elements that appear inside of "nav" tags. If there is another list on the page, it won't be modified.

## Add color to the text

Here, we change the color of the text to something that is almost white. We also remove the underline from the link.

    nav a {
      color: AntiqueWhite;
      text-decoration: none;
    }

## Add the hover effects

Finally, when the user hovers their mouse over the link, we want the background color of the element to change and the underline to reappear.

    nav li:hover {
      background: brown;
    }

    nav a:hover {
      text-decoration: underline;
    }

## Let's add icons.

For this, you'll need make sure the icons library is loaded in the `<head>` section of your html page.

- For APSU, I found the icon "school".
- For Google, I found the icon "search".
- For Free Rice, I found the icon "rice_bowl".

I searched all three of these terms in the icon search (make sure you get the "Filled" version) and worked them into my HTML.

## HTML for my finished menu.

    <nav>
        <ul>
        <li><span class="material-icons">school</span>
            <a href="http://apsu.edu">APSU</a></li>
        <li><span class="material-icons">search</span>
            <a href="https://google.com">Google</a></li>
        <li><span class="material-icons">rice_bowl</span>
            <a href="http://freerice.com">Free Rice</a></li>
        </ul>
    </nav>

## Let's add the Google Font

Again, for this, you'll need make sure the fonts library is loaded in the `<head>` section of your html page. I replaced the `font-family` line with this:

    font-family: Emblema One, sans-serif;

That's it. Our menu is done.

# Rest of Class

## Rest of Class

We would like for you to find more fonts and icons and add them to your website.
