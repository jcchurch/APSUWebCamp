% Welcome to APSU Web Development Camp
% Sponsored by GOOGLE!

# Introduction

## Welcome to the APSU Camp on Web Development.

In this camp, we will learn the following.

- HTML is used to create websites.
- CSS is used to style websites.
- Basic computer literacy.
- Maybe enough to think about a career in computer IT.
- Try to have some fun in the process.

## The stuff we teach you

- The stuff we teach you in this camp is used by real IT professionals.

. . .

- Really. We wanted this camp to be real-world skills and literacy.

# Programming

## Let's talk about the tools of Programming for the Web

You really only need two pieces of software to write code for the web.

- A web browser.
- A text editor.

## Web Browsers

What are some web browsers? This is software used to browse the World Wide Web.

. . .

- Google Chrome
- Microsoft Edge
- Mozilla Firefox
- Apple Safari
- And more!

Most browsers are free! Which one is your favorite? Is there one that we didn't mention?

## Text Editors

A text editor is software used to write code. It saves text to files without any formatting (so software like Microsoft Word won't make for a good text editor). Does anyone know of text editors?

. . .

- Notepad for Windows! (This is already installed on every version of Windows.)
- Notepad++ is a free download for Windows.
- Brackets is a free download for Mac.
- Visual Studio Code is a free download for Windows and Mac.

## Which one should I download?

If you use a Mac, we recommend that you download Brackets or Visual Studio Code. If you use Windows, we recommend that you download Visual Studio Code. Not every text editor is free, but the ones we list are free!

# The Internet

## Let's talk about the Internet

- Your computer has an address that is either assigned to you by your Internet Service Provider or the router to which you are connected.
- Your ISP is your Internet Service Provider.
- A **server** houses files and also has an IP address somewhere else in the world. Often, it will have a domain name, such as "google.com".

## So how does the Web work?

It's pretty simple to explain. Simple is good! If you are on the internet, you are connected to an Internet Service Provider.

1. You type a website address or click a link. (Links contain addresses.)
2. This tells the Internet Service Provider to go find the **server** for your address. 
3. The server then looks for a file containing the desired content.
4. The server sends the desired content back to your Internet Service Provider.
5. The Internet Service Provider sends the content to your computer.
6. The web browser figures out how to display the content on your screen.

## What is HTTP and HTML?

There are a lot of terms used on the Internet that you only know of by letters.

- HTTP stands for Hypertext Transfer Protocol.
    - Hypertext Transfer Protocol is the instructions needed to send a file from one computer to another over the web.
- HTML stands for Hypertext Markup Language.
    - Hypertext Markup Language is the programming language used to design websites, which is why you are here!

In short, you use HTTP to send HTML files over the WWW.

## The Three Main Technologies of the Web

- HTML5 is the language that specifies the content of the web page.
- CSS stands for Cascading Style Sheets. It's used to specify the style (color, font sizes, placement) of an HTML page.
- JavaScript is the language for interactive websites. People have created amazing games entirely in JavaScript.

Each of these three technologies are represented with different programming languages. Your web browser understands all three.

# An Introduction to HTML5

## Text Editors

A **text editor** is a common tool that programmers use. A tool, like a hammer or a drill, is one that should be cared for and learned. You can whack your thumb with a hammer and you can accidentally wipe out files with a text editor. It's pretty important that you get to know the features of your text editor.

## Text Editors

Let's take a look at Visual Studio Code.

![VS Code](images/vscode_fresh.png)

## Text Editors

The first thing I do is create a new file and save it. Click on "File" and "New File".

![VS Code: New File](images/vscode_new_file.png)

## Text Editors

Our file is called "Untitled," which is a poor name for a file. Let's fix that.

![VS Code: Untitled](images/vscode_untitled.png)

## Text Editors

Click on "File" and "Save As".

![VS Code: Save As](images/vscode_save_as.png)

## Text Editors

When you save a file, select the Desktop and name it "index.html".

![Save As](images/save_as_index_html.png)

## Why index.html?

- Software recognizes files by their extension.
- Think of file names as a "Given name" and a "Family name."
- Think of "index" is the given name. You can name a file whatever you like, but let's name this file "index".
- Think of "html" as the family name. This is also called the "extension."
- Make sure you put a period between the two names.
- Your browser will know this is an HTML file by the extension "html".

## One more thing.

- Never

. . .

- ever,

. . .

- Ever,

. . .

- EVER,

. . .

- **EVER**

. . .

- put spaces in your filenames.

Thank you.

## Text Editors

When you save a file, select the Desktop and name it "index.html".

![VS Code: index.html](images/vscode_index_html.png)

## HTML5

HTML5 stands for Hyper Text Markup Language Version 5.

The first line in every HTML5 document is the DOCTYPE line. It looks like this:

    <!DOCTYPE html>

Go ahead and type it in.

## HTML5

When you are done, your screen will look like this. This code is not saved.

![VS Code: Not Saved](images/vscode_not_saved.png)

## HTML5

Once you save, it will look like this. Can you spot the difference between these two photos?

![VS Code: Not Saved](images/vscode_saved.png)

## More Code

From here on out, we are typing up our code together. You won't see screenshots.

## Next code.

Type up our two new lines of code. I've included the first line which you should already have.

    <!DOCTYPE html>

    <html lang="en">

    </html>

All code will go between the two new lines that you just added. The last line of every html file should be "`</html>`".

## What are tags?

- A tag is a label to indicate a type of content, such as a paragraph or an image.
- Some tags require a start and an end, such as "`<html>`" and "`</html>`". Your content will go between the start and end.
- Some tags operate by themselves, such as the "`<img>`" tag for images. We'll talk more about images in a bit.

# Review Time

## Question 1

What's wrong with the following line?

    <DOCTYPE html>

## Question 2

What's wrong with the following line?

    <html en="lang">

## Question 3

What's wrong with the following file name?

    dog breeds.html

## Question 4

Why are opening and closing tags important?

1. They add color to your website.
2. They indicite the start and stop of content.
3. They aren't important.

## Question 5

What is the correct parring?

1. `<html> </html>`
2. `<html> <html>`
3. `</html> <html>`

# The Page Head and Body

## The Page Head

Let's add our next bit of code. This goes inside the `<html>` tags.

    <head>
    </head>

The `<head>` tag contains information about a website. You usually don't see this information on a website, but it is very important.

## Add the meta tag

The `<meta>` tag defines which characters this website supports. It always goes inside the `<head>` tag. This line says "UTF-8", which is the fancy way of saying emojis!

    <head>
        <meta charset="utf-8">
    </head>

We'll play with some emojis in a bit.

## Add the title tag.

The `<title>` tag will define the title of your website in the title bar! This is our first line of code that changes our website.

    <head>
        <meta charset="utf-8">
        <title>Cute Animal Pictures</title>
    </head>

Feel free to change "Cute Animal Pictures" with anything you like. Save your page and check out what your page looks like.

## The Page Body

We are going to add a new tag to our website: "`<body>`" and "`</body>`". These tags will go after the final "`</head>`"tag but before the final "`</html>`". See where they are added:

    <!DOCTYPE html>
    <html lang="en">
    <head>
        ... Stuff that we already typed ...
    </head>
    <body>

    </body>
    </html>

# Page Elements

## Elements

We are going to show you a bunch of simple elements that you can add to your website. All of these will go inside of the `body` tag.

## The h1 element

Let's begin with the "`<h1>`" element. This element goes inside of the body tag. The `h1` tag needs to have an ending tag.

    <h1>Welcome to my page about cute animals!</h1>

Add that to your website and refresh. The `h1` tag is used for page headers. It displays text is a nice large font.

## The h1,h2,h3,h4,h5,h6 elements

There are SIX header elements: `h1 h2 h3 h4 h5 h6`

    <h1>Heading 1 - Largest</h1>
    <h2>Heading 2</h1>
    <h3>Heading 3</h1>
    <h4>Heading 4</h1>
    <h5>Heading 5</h1>
    <h6>Heading 6 - Smallest</h1>

Type up all of these and see what sizes they produce.

## The p element

The "`<p>`" element is used to create paragraphs of text. Each block of text defined by a `p` tag will appear to be its own paragraph. Go ahead and type up a few examples of the `p` tag.

    <h1>Welcome to my page about cute animals!</h1>
    
    <p>Hi! My name is Fido! I love collecting cute animal pictures!</p>

    <p>I hope you enjoy the pictures that I've collected.</p>

## Images

To put images into your website, we need image files. Unless you created the image, you don't own the image and you need to ask people for permission to use their images. This website will let us use images for free.

    https://unsplash.com

Go to this website and type the name of an animal.

## Cool Cat

This cat is cooler than you and was found on Unsplash.

![Cool Cat](images/coolcat.png)

## Finding the perfect image

- When you find the perfect image for your site, you must save it to your computer on the Desktop.
- I recommend giving the file an easy-to-remember name like `coolcat.png`.
    - Should you use spaces in your filenames?
    - A `png` file is an image file popular on the web. Other types are `jpg`, `gif`, and `webp`.
- In order for this next step to work, you must see your `index.html` file and your image file on the desktop.

## Add the code for the image

This can be added to your page's `body` tag:

    <img src="coolcat.png" alt="The coolest cat">

- Here, make sure you change `coolcat.png` to your filename and "The coolest cat" to a description of your image.
- If you did this right and save your page, your image will appear on your website.
- Don't worry if it is too big or too small. We'll worry about that later.

## Rest of the day

- Make a website with the following:
   - Three images
   - Three emojis that relate to your images.
   - Descriptions of each of your images.
