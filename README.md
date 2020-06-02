# MIMS Commander

Build and deployment Gradle scripts for multi-project builds.  

## Prerequisites

* Familiarity with [Gradle](https://docs.gradle.org/current/userguide/userguide.html)
* [Docker for Desktop](https://www.docker.com/products/docker-desktop)
* [Node](https://nodejs.org/en/) & [NPM](https://www.npmjs.com/get-npm)

> Versions dependent on your project.  Rule of thumb is to use latest stable version available.

## General Instructions

### Clone & Setup

1. Clone MIMS Commander into folder named _\_commander_.  
2. Make _./gradlew_ executable by running 

        chmod +x ./gradlew

3. Copy _gradle.properties.sample_ to _gradle.properties_ and edit file to fill in user properties.  For example, supply your Git credentials and project branches.

4. From _commander folder, run:

        ./gradlew clone

    > This will clone all commander sub-projects (Gradle terminology).

### Build

1. Build mims-reference-data-ui-service library

        ./gradlew :mims-reference-data-ui-service:npmBuildLib

    > This is necessary to be done first as the main mims-reference-data-ui-service project's build requires the libary to be present locally.

2. Build projects

        ./gradlew build

3. Builed docker images

        ./gradlew docker

### Deploy Solution to Docker

