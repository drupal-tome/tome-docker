# Tome Docker

This repository contains a Dockerfile for [Tome], which can be used for local
development on a Tome project.

The image can be built locally, or you can use the `mortenson/tome` image from
Docker Hub.

Credit to [frob] for contributing the original Dockerfile.

# Creating a new Tome project

This image can be used to initialize new Tome projects. To do this, run:

```
mkdir my-project
cd my-project
docker run --rm -it -v "$(pwd)":/var/www/tome mortenson/tome init
```

This will create a new instance of [tome-project] in the "my-project"
directory, and take you through your first Drupal install and export.

# Running a local server

To start a local server on the default port, run:

```
docker run --rm -it -p 8888:8888 -v "$(pwd)":/var/www/tome mortenson/tome
```

# Generating static HTML

To generate static HTML, run:

```
docker run --rm -it -v "$(pwd)":/var/www/tome mortenson/tome drush tome:static
```

You can run any other command in a similar fashion if you need to.

[Tome]: https://tome.fyi
[tome-project]: https://github.com/drupal-tome/tome-project
[frob]: https://github.com/frob