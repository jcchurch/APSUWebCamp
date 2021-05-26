% Day 4 on HTML Menus
% Sponsored by GOOGLE!

# Review

## Today's class

Today's class will start with yesterday's code. Try to find it.

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

Here's some HTML code. Drop this into http://jsfiddle.net.

    <a href="http://apsu.edu" id="apsu">Austin Peay</a>

Here's the CSS to try.

    a:link { font-size: 50%; color: red; }
    a:visited { color: blue; }
    a:hover { font-size: 200%; color: pink; }
    a:focus { font-size: 200%; color: green; }
    a:active { font-size: 250%; color: purple; }

# Menus

## Menus

Our goal in this next project is to build a menu for our website.

## An unordered list of links

We need an unordered list of links.

    <nav>
    <ul>
    <li><a href="http://apsu.edu">APSU</a></li>
    <li><a href="https://google.com">Google</a></li>
    <li><a href="http://bongo.cat">Bongo Cat</a></li>
    </ul>
    </nav>

## The beginnings.

![Our unordered list of links with no CSS.](images/navbar_before.png)

## Apply some simple CSS

    #nav_bar ul {
        list-style: none;
        margin: 0px;
        padding: 0px;
    }
    #nav_bar li {
        display: inline;
        float: left;
    }

## When we inline these elements.

![Our unordered list of links with inline CSS.](images/navbar_inline.png)

## Add more code to "li".

    #nav_bar li {
        display: inline;
        float: left;
        padding: 15px;
        background-color: red;
        border: 1px solid black;
    }

## Now with some color

![We added some spacing, color, and a border.](images/navbar_color.png)

## Let's play with the text

More CSS.

    #nav_bar a {
        color: white;
        text-shadow: 2px 2px 2px black;
    }
    #nav_bar li:hover, #nav_bar li:focus {
        background-color: firebrick;
    }

Here, we force the text to be white and we add a black dropshadow to the text. Also, when the mouse hovers over one of the menu items, the background color turns to "firebrick". (I love the word "firebrick.")

## Navigational Bar: Final Version

![The dropshadow and the hover effect looks good.](images/navbar_final.png)

There is a lot more that we could do to improve the look of this navigational menu, like change the font family. A good designer might consider this a starting point. From a technical perspective, I think this works.

# Images

## Images

Let's talk about this HTML.

    <img src="khan.png" alt="Khan the Iguana">
    Khan is a male green iguana that is 13 years old.
    His favorite foods are bananas and raspberries.
    His favorite activites are watching people passing by his window.

## Text Images: Bottom Alignment

By default, text aligns with the bottom of the image.

![Text alignment at the bottom of the image.](images/image_alignment_bottom.png)

## Text Images: Middle Alignment

    img { vertical-align: middle; }

![Text alignment at the middle of the image.](images/image_alignment_middle.png)

## Text Images: Top Alignment

    img { vertical-align: top; }

![Text alignment at the top of the image.](images/image_alignment_top.png)

## When to use vertical-align

- You should use vertical-align if you have a small amount of text to be displayed. Anything beyond your text block is going to spill over below the image.
- If you really want text to stay together around an image, you can use the "float" property that we've discussed before.

Code.

    img { float: left; }

## Text Images: Float Left

![The image floats to the left of the text.](images/image_float_left.png)

# Tables

## Tables

Tables are used to **tabular data**. In other words, this is used to represent data on screen in much the same way that a spreadsheet represents data: using rows and columns of cells.

When learning about tables, you'll see that you could implement complex page layouts using tables. In the past, this was the only way to produce complex layouts. Now, using tables to do design work is considered a bad practice and you should focus on CSS.

## Tables

Tables are represented by **rows** of data. Inside each row, there are **cells**.  There are four tags which you must remember:

- **table** defines a table.
- **tr** defines a row within that table. (Think "table row".)
- **th** defines a header cell within a row. (Think "table header".)
- **td** defines a data cell within a row. (Think "table data".)

## Additional HTML tags

Everything regarding a table exists between the **table** tag. Here are three additional, less commonly used, tags to remember:

- thead: the header rows
- tbody: the body rows
- tfoot: the footer rows

These tags are used to wrap rows of data (defined by the **tr** tag). Like "header" and "footer", these are semantic tags and don't have a special functionality. You can find examples of these tags in action in the book.

## Example of a table.

    <h1>Baseball batting averages</h1>
    <table>
        <tr><th>Name</th><th>Average</th></tr>
        <tr><td>Babe Ruth</td><td>0.342</td></tr>
        <tr><td>Hank Aaron</td><td>0.305</td></tr>
    </table> 

Notice that the first row used "th" cells because those are headers. Every row after the first used "td" cells, because those contain data.

## Tables and CSS

- Tables will automatically resize rows and columns based on the length and width of the data within.
- By default, tables have no border.
- By default, the "th" tag presents data using a bold typeface.
- Tables can be further customized using CSS.
    - There is nothing original about the CSS used to define tables, so you can consult the book if you would like additional information.

# Forms

## Forms

Form elements are used to send data to a webserver or to a JavaScript application. We will be using form elements in the second half of the course when we cover JavaScript. For now, I just want you to know what these elements look like. We'll talk about what they do, but we don't know enough just yet to demonstrate what they do.

For the most part, form elements should exist inside of the "form" tag. There are some exceptions to this rule that we won't cover.

## The "form" element

You can have multiple forms on a page. Anything that requires text input should be defined as a form. For example, a website might have a search function (a form) and a login function (a different form).

For now, we will use a form with no attributes. When we move to JavaScript, we will start adding more to this tag.

    <!-- Our first form! -->
    <form>
        <!-- form elements go here -->
    </form>

    <!-- Another form! -->
    <form>
    </form>

## The "input" element : Text

There are many input mechanisms in HTML. Rather than give a unique tag to each of them, several input mechanisms are wrapped into a single element "input". In order to decide which mechanism that you need, you include the "type" attribute. The most basic of these types is the "text". It creates a single-line text input box on the screen.

    <form>
        <input type="text">
    </form>

## The "input" element : Submit

In order to say that you are finished typing and wish for a website to do something, you "submit" the form data. The type for this is called "submit".

    <form>
        <input type="text">
        <input type="submit">
    </form>

## The "input" element : Reset

I have no idea why this element exists, but the "reset" type will clear your input form with a button click. Have you ever filled out a long form and wanted to go away with the click of a button? Of course not. This still exists.

    <form>
        <input type="text">
        <input type="submit">
        <input type="reset">
    </form>

Try this out. Fill out some text in the text field and click "Reset". It's gone!

## The "input" element : Checkbox

Checkboxes allow you to select multiple items of a particular group. You might have multiple favorite colors. Let's play with this example.

    <form>
    <input type="checkbox" name="color" value="red"> Red
    <input type="checkbox" name="color" value="green"> Green
    <input type="checkbox" name="color" value="blue"> Blue
    </form>

## The "input" element : Radio

Radio buttons work like the mechanical radio buttons in an old car. Those old radios would only let you select one of something.

    <form>
    <input type="radio" name="grade" value="A"> A
    <input type="radio" name="grade" value="B"> B
    <input type="radio" name="grade" value="C"> C
    <input type="radio" name="grade" value="D"> D
    <input type="radio" name="grade" value="F"> F
    </form>

## The button element

The button element makes a button. That's it. It has a type attribute that must be set to "button". I realize this is odd. It also requires an ending tag.

    <button type="button">Click me!</button>

## The "select" element

The select element defines a dropdown menu.

    <select name="cars">
      <option value="volvo">Volvo</option>
      <option value="saab">Saab</option>
      <option value="fiat">Fiat</option>
      <option value="audi">Audi</option>
    </select>

(I pulled this example off of w3schools.com.)

## The "textarea" element

The textarea element allows you to create a multiline input field.

    <textarea name="message" rows="10" cols="30">
    The cat was playing in the garden.
    </textarea>
