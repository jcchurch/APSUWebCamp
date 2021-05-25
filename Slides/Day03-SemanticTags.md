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

## Play the video on Internet Safety

. . .

What did you think?

## Three take-aways

- Oversharing on social media.
    - Don't let people take advantage of you because of the things you share by being selective about what you share.
    - Don't share things about people you know without their consent.
- Turn off accounts which you don't care about.
    - You aren't obligated to follow anyone and no one is obligated to follow you.
- Don't compare your hidden life to another person's highlight reel.
    - In other words, everyone has flaws so don't worry about it when other people seem flawless.
- Finally, computer-related addition is real, so know when to walk away when it is too much.
    - People with addictions aren't bad. They just need a little help.

# Design Time

## Semantic Tags

Semantic tags are used to organize your content. Usually, websites are divided into areas:

- header information contains your sites title, the author name, and the logo.
- main content contains unique content like to show off to your visitors.
- sidebar content will contain a short description of the author and linkes to related websites.
- footer information copywrite information, contact information, a link back to the top of the page.
    - However, young people probably shouldn't put their contact information on a public website.

## Semantic Tags

HTML5 has semantic tags that represent each of these content areas:

- header area: `header`
- main content: `main`
- sidebar area: `aside`
- footer area: `footer`

These tags don't do anything special. All of these tags look the same and no one cares if you put the wrong content into a element. The purpose is to help you organize your website, so make sure the right content goes with the right tag. It's pretty easy to remember all of these except for "sidebar". You have to remember that "sidebar" is `aside`.

## Confusing Terminology: head vs header vs headings

- The `head` of the website contains information about the website, but no actual content. You usually see this before the `body` tag.
- The `header` of the website contains the information that people will see at the top of the page. You usually see this as one of the first elements inside the `body`.
- `h1, h2, h3, h4, h5, h6` are called **headings**. They are used to denote the tiles of sections of your website.

## Designing a website

When we design websites, we typically scetch up where these four primary elements will go.

![Mockup with Basic Elements](images/mockup.png)

## Designing a website

Next, we add example content to those basic areas.

![Mockup with Example Content](images/mockup_done.png)

## Design Time

- The best way to learn is to do.
- It's time to practice website design.
- Your task is to design a website in which you would like to design.
    - My favorite web design tool is just a pencil and paper.
    - If you don't want to draw, we encourage you to use Microsoft Paint.
    - Make sure you include the four areas: header, main, sidebar, and footer
    - Don't worry about what you can and cannot do.
        - Dream big. Put anything on your website.
        - If you think it should exist, try to make it exist.
- Spend some time drawing a website.
- If it helps, go find some images for your website.

# Coding Time

## Let's code the header section.

It's time to code your website. Follow along. Let's start with the `header` tag. Add this to your body. Obviously, you'll want to replace your page title and author with your name and title.

    <header>
        <img src="puppy.png" alt="a cute puppy">
        <h1>Cute Animal Pictures</h1>
        <p>By Fido the Pupper</b>
    </header>

## Let's code the main section.

Let's code the main section. I've got three images I'd like to display.

    <main>
        <h2>Check out this cool cat.</h2>
        <img src="coolcat.png" alt="a cool cat">
        
        <h2>Check out this adorable iguana.</h2>
        <img src="iguana.png" alt="a lovable iguana">

        <h2>Check out this serious turtle.</h2>
        <img src="turtle.png" alt="a serious turtle">
    </main>

## Let's code our sidebar

    <aside>
        <p>
           Learn more about animals at
           <a href="http://natgeo.com">
             National Geographic.
           </a>
        </p>
    </aside>

This sidebar contains a link to another website.

## Let's code our footer.

The footer usually contains a copyright date.

    <footer>
        &copy; 2056 Fido the Pupper
    </footer>

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
        background: lime;
    }

Save your file and reload your page. If you don't like the lime color, try a different color name. CSS understands several common color names and even some interesting ones like **coral**, **olive**, and **tomato**! Is tomato a color? In CSS, tomato is a color! Perform a Google search for "CSS color names" to find a full list. Try at least three colors before moving on.

Also: don't forget your semicolons!

## Change each section's color.

You can change each section of your website's color by naming the tag and changing the background color, just like we did on the last slide. Here, we change the background color of the `header` to red and the `main` to aqua. This is still in `style.css`.

    header {
        background: red;
    }

    main {
        background: aqua;
    }

Once you change these colors, change the `footer` and the `aside` to different colors.

## Change the color of text

If the background color is "background", what do you think the foreground color is? This is where CSS is weird: it's just "color".

     header {
        background: red;
        color: green;
    }

# Creating a two column format.

## Controlling Width

Everything in HTML has a width. By default, all of our sections take up 100% of the screen. We can change this. Let's have `main` and `aside` take up less width.

    main {
        /* ... */
        width: 60%;
    }

    aside {
        /* ... */
        width: 35%;
    }

Save your file and check out the results.

## Making the main move to the left.

We want the main to be on the left side of the screen and the sidebar to be on the right.
 
    main {
        /* ... */
        width: 60%;
        float: left;
    }

Save your work and check it out. When elements float, elements below that element float too.

## Making the sidebar move to the right.

You guessed it: we can make the sidebar move to the right.

    aside {
        /* ... */
        width: 35%;
        float: right;
    }

Does this cause any problems? Check out the footer. Remember: when elements float, other elements below those elements float too.

## Let's move the footer.

The footer is in a weird spot. We need to move it back to the bottom of the page.

    footer {
        /* ... */
        clear: both;
    }

The `clear` property tells elements to stop floating! It will move back to the bottom of the screen.

# Rest of Class

## For the rest of class

For the rest of class, build your ideal website. Combine all of the elements we've covered in the past classes into a beautiful website. We'll be floating around the room to help you with your designs.
