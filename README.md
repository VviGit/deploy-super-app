# deploy-super-app

Package and deploy the application Basic Express app

#### Table of contents

1. [Goals](#goals)
2. [Prerequisites](#prerequisites)
2. [Technical info](#technical-stack)
3. [Getting started](#getting-started)
4. [Next steps](#next-steps)

## Goals

The goal of this repository is to provide tools to be able to easily deploy the application [Basic Express app](https://github.com/tomsquest/recruitement-exam-ops)

## Prerequisites

1. **Docker**
2. **Make**

## Technical info

* We use docker to package the app so you won't need to install Javascript dependencies.

## Getting started

After cloning the repository, you can start the application with :

```sh
make start-app
```
Rights permissions are needed on the current directory to clone source code.


You can stop the app with 
```sh
make stop-app
```

## Next Steps
1. See with developers prerequisites to start the app, if possible reduce build image size and run image for security reasons.
3. Integrate image build in CI pipeline.
2. Add integration to a docker registry (push image after build).
4. Integrate image pull in CD pipeline.