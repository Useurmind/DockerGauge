# Readme

This image contains gauge and powershell and is based on ubuntu 18.04.

Gauge can be run e.g. like this:

    docker run -it useurmind/gauge:latest run specs

To make this work you have to copy your project into a derived image, install any npm packages
required and set the working folder to your project folder.

It preinstalls the following plugins:

- js
- screenshot
- html-report
- xml-report