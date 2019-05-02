FROM node:slim

LABEL "name"="github"
LABEL "maintainer"="GitHub Actions <support+actions@github.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="HB Approval"
LABEL "com.github.actions.description"="An action for doing things on GitHub repositories"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

COPY *.md /
COPY package*.json ./

RUN npm ci

COPY entrypoint.js /entrypoint.js

ENTRYPOINT ["node", "/entrypoint.js"]
