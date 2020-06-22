# docker-firebase
A Dockerfile that includes NodeJS, Firebase and Java for CI\CD of Firebase apps.

## How to use with Gitlab-CI
You can use image `scholarshipowl/firebase` as build image in `.gitlab-ci.yaml`.

```yaml
variables:
  FIREBASE_TOKEN: {{ Get token with `firebase login:ci` }}

deploy:
  stage: deploy
  image: scholarhsipowl/firebase
  script:
    # Deploy to hosting
    - firebase deploy
      --only hosting
      --message "Pipe ${CI_PIPELINE_ID} Build ${CI_BUILD_ID}"
```