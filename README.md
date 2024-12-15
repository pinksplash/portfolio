# Rachel Bell's design portfolio

https://pinksplash.github.io/portfolio

## Setup

Make sure python3 is installed. `build.sh` will do the necessary setup of the
Python virtual environment automatically.

## Generating the website

To regenerate the site, run:

```sh
./build.sh
```

The HTML template files are in the `src` folder. The `site` folder is where the
output HTML files are generated. `site` is excluded from the git repo.

## Deploying a new version

First ensure that you have committed any pending changes to git. Then, with a
clean working directory, run:

```sh
./deploy.sh
```

This will build and deploy a new version to GitHub pages.

The `pages` branch contains the generated website (i.e. a copy of the `site`
folder). It will ask you for a new commit description, then will push to the
`pages` branch. It should be live within a few seconds.
