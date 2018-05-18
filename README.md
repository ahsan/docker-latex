# <center>docker-latex</center>

This project makes compiling LaTeX documents hassle free. You dont have to install LaTeX on your machine to start making beautifully typeset documents. docker-latex container has the environment already set up.

## How To:
Make sure you have Docker installed on your machine.
1. Pull the image from dockerhub [abdulah/docker-latex](https://hub.docker.com/r/abdulah/docker-latex/):

```bash
docker pull abdulah/docker-latex:latest
```

or build image from the Dockerfile found in this repository
```bash
git clone git@github.com:ahsan/docker-latex.git
cd ./docker-latex/
docker build -t abdulah/docker-latex:latest .
```

2. Test the image
```bash
docker run -it -v $(pwd):/projects/latex/ abdulah/docker-latex:latest
```

This command should make these three files inside your current working directory:
- hello.pdf
- hello.log
- hello.aux

3. In order to compile your own latex code, move to your project's directory and run this:
```bash
docker run -d -v $(pwd):/projects/latex/ abdulah/docker-latex:latest bash -c "pdflatex filename.tex"
```
> Replace `filename` with the name of your project's main .tex file

