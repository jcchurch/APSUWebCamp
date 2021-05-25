% Day 3 on HTML Semantics
% Sponsored by GOOGLE!

# Review

## Let's review

What did we talk about in the last class?

- What is the tool that we use for programming?
- Should we use spaces in our file names?

## All of the tags we learned.

!DOCTYPE html head meta title body h1 h2 h3 h4 h5 h6 p img

## Let's code a fresh website from scratch.

Let's build a complete website using most of what we learned yesterday.

## Today's video

. . . Put stuff here.

# Design Time

## Semantic Tags

# Styling our page with CSS

## Styling our page with CSS

Our page looks ugly. There are only two colors. The images are misshappen. We need to style our page. We style with CSS. CSS is a different language from HTML, so it will take some getting use to. We need to add the `link` tag to our `head` tag:

    <head>
        <meta charset="utf-8">
        <title>Cute Animal Pictures</title>
        <link rel="stylesheet" href="style.css">
    </head>

See that part that references the file `style.css`? We need to make this file. You can do this easily in Visual Studio Code by holding the CTRL button and clicking on the "style.css" that you just typed. It will ask you if you wish to make the file.

## What is style and content?

Content is anything you read or look at for the purpose of gaining information. Style is how it is displayed. Style covers...

- Color
- Size
- Position
- Border
- And so much more!

## Change our site's background color.

We are now working with the file `style.css` and because of that, we write in a new language: CSS. Type this:

    body {
        background: green;
    }

Save your file and reload your page. If you don't like the color, try a different color name. CSS understands several common color names and even some interesting ones like **coral**, **olive**, and **tomato**! Is tomato a color? In CSS, tomato is a color! Perform a Google search for "HTML color names" to find a full list. Try at least three colors before moving on.

Also: don't forget your semicolons!

