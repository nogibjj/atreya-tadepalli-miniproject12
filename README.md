[![CI](https://github.com/nogibjj/python-ruff-template/actions/workflows/cicd.yml/badge.svg)](https://github.com/nogibjj/python-ruff-template/actions/workflows/cicd.yml)
# Flask App - TV presence in text


## Instructions 

Create a simple Python application containerized with a dockerfile. The goal here is to both demonstrate running your application within a docker container (using docker run terminal commands) but to also build a docker image in your CI/CD pipeline which will be pushed to Docker Hub or other container management service.

## Purpose

In this application, I propose to determine if a user inputs a string with the two characters "tv" in the text. Essentially, this program just searches the text for this string, and returns the index of the first location at which "TV" is mentioned. If there is no such reference, the program will note that there was no "tv" string.

## Steps

1. The first step was designing the program. This involved ultimately processing the user input, and searching for the first instance of a "t" character. Following that, if "v" was the next character, the index of the "t" character was returned. This involved the use of a HTML template to ultimately prepare the website for the input and result.

2. In order to build a docker image, the CI/CD needed to be revised. This was no longer being processed for Github Actions, and instead needed to involve connecting to the local DockerHub. In order to do so, the Docker username and password needed to be stored as repository secrets, and ultimately had to be referenced within the yml file. Given a docker image had to be prepared, a docker image was first built before being run, with the name "test-docker". Additionally, the makefile had to be revised to provide instructions to build and run the application.

3. Running the file tv_check.py allows a user to click on the generated local website to ultimately use this application.

## Results

Here is the input I entered, along with the result returned. This aligns with the purpose, as "tv" starts at the 12th index in the string.

<img width="250" alt="image" src="https://github.com/user-attachments/assets/e37aa146-d904-49bc-b6f0-9fb1bb383ad9" />

Below shows the docker image prepared in the Docker Hub.

<img width="1049" alt="image" src="https://github.com/user-attachments/assets/25c22905-bc26-4c10-965f-6fe77c55bcd4" />








