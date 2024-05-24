# Dillinger
## _The Last Markdown Editor, Ever_

Dillinger is a cloud-enabled, mobile-ready, offline-storage compatible, Angular JS-powered HTML5 Markdown editor.

+ Type some Markdown on the left
+ See HTML in the right
+ ✨Magic✨

## Features

+ Import a HTML file and watch it magically convert to Markdown
+ Drag and drop images (requires your Dropbox account be linked)
+ Import and save files from GitHub, Dropbox, Google Drive and One Drive
+ Drag and drop markdown and HTML files into Dillinger
+ Export documents as Markdown, HTML, and PDF

Markdown is a lightweight markup language based on the formatting conventions that people naturaly use in email.  
As [John Gruber](https://en.wikipedia.org/wiki/John_Gruber) writes on the [Makrdown site](https://en.wikipedia.org/wiki/Markdown)

```
for i in range(10):
    print (hello)
```

>_The overriding design goal for Markdown's formatting syntax is to make it as readable as possible. The idea is that a Markdown-formatted document should be publishable as-is, as plain text, without looking like it's been marked up with tags or formatting instructions._

This text you see here is *actually-written in Markdown! To get a feel for Markdown's syntax, type some text into the left window and watch the results in the right.

## Tech

Dillinger uses a number of open source projects to work properly:

- [AngularJS](https://en.wikipedia.org/wiki/AngularJS) - HTML enhanced for web apps!
- [Ace Editor](https://en.wikipedia.org/wiki/Ace_(editor)) - awesome web-based text editor
- [markdown-it](https://en.wikipedia.org/wiki/Markdown) - Markdown parser done right. Fast and easy to extend.
- [Twitter Bootstrap](https://en.wikipedia.org/wiki/Bootstrap_(front-end_framework)) - great UI boilerplate for modern web apps
- [node.js](https://en.wikipedia.org/wiki/Node.js) - evented I/O for the backend
- [Express](https://en.wikipedia.org/wiki/Express) - fast node.js network app framework [@tjholowaychuk](https://github.com/tj)
- [Gulp](https://gulpjs.com/) - the streaming build system
- [Breakdance](https://breakdance.com/) - HTML

## Installation

Dillinger requires [Node.js](https://ko.wikipedia.org/wiki/Node.js) v10+ to run.

Install the dependencies and devDependencies and start the server.

```sh
cd dillinger
npm i
node app
```

For production environments...

```sh
npm install --production
NODE_ENV=production node app
```

## Plugins

Dillinger is currently extended with the following plugins.  
Instructions on how to use them in your own application are linked below.

| Plugin | README |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md](https://ko.wikipedia.org/wiki/%EB%93%9C%EB%A1%AD%EB%B0%95%EC%8A%A4) |
| GitHub | [plugins/github/README.md](https://ko.wikipedia.org/wiki/%EA%B9%83%ED%97%88%EB%B8%8C) |
| Google Drive | [plugins/googledrive/README.md](https://ko.wikipedia.org/wiki/%EA%B9%83%ED%97%88%EB%B8%8C) |
| OneDrive | [plugins/onedrive/README.md](https://ko.wikipedia.org/wiki/%EC%9B%90%EB%93%9C%EB%9D%BC%EC%9D%B4%EB%B8%8C) |
| Medium | [plugins/medium/README.md](https://ko.wikipedia.org/wiki/%EB%AF%B8%EB%94%94%EC%97%84) |

## Development

Want to contribute? Great!  

Dillinger uses Gulp + Webpack for fast developing.  
Make a change in your file and instantaneously see your updates!

Open your favorite Terminal and run these commands.

  
First Tab:

```sh
node app
```

Second Tab:

```sh
gulp watch
```

(optional) Third:

```sh
karma test
```

### Building for source

For production release:

```sh
gulp build --prod
```