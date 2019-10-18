# Readme

This is a collection of docker images containing gauge.

The following images are provided:

- __useurmind/gauge__: Basic image with ubuntu 18.04 and gauge (some plugins preinstalled: js, screenshot, html-report, xml-report)
- __useurmind/gauge-java__: Contains openjdk11 to run java test steps with the java plugin (which also comes preinstalled).
 
Gauge can be run e.g. like this:

    docker run -it useurmind/gauge:latest run specs

To make this work you have to copy your project into a derived image, install any npm packages
required and set the working folder to your project folder.