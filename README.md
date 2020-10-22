<p align="center">
  <a href="https://www.gatsbyjs.org">
    <img alt="Pmbot docs" src="./branding/pmbot-logo.svg" width="60" />
  </a>
</p>
<h1 align="center">
  Pmbot Docs
</h1>

A Circle CI orb that notifies Pmbot of job statuses.

## Get started

Process of writing and publishing orbs: https://circleci.com/docs/2.0/orb-author-validate-publish/

```shell script
# verify orb
circleci orb validate orb.yml
# publish dev version
circleci orb publish promote pmbot/webhook@dev:first
# publish to prod
circleci orb publish promote pmbot/webhook@dev:first <major|minor|patch>
```
