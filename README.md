LightController
---------------

12 HTML5 input-fields that sends ajax calls on change.
On load it asks the server for the current values and changes the sliders.

NO DESIGN DONE.
NO SECURITY WHATSOEVER.


Server should have the following API:

# get_lights [GET]:

Return the current values of all the lights.
JSON format should be:

{
	"lights": {
		"1": VALUE,
		"2": VALUE,
		"ID": VALUE,
		...
	}
}

Where VALUE is 0-100 (int) and ID (int) is the code for a specific light.

# set_light [GET]:

Set light value for specific light.
Parameters:
{ light: ID, value: VALUE }
where ID is 1-12 and VALUE is 1-100

Or:

{ "all": VALUE }

Turn on/off all lights at the same time.

where VALUE is either "on" or "off"


Project is built upon proteus-gulp:

# Proteus - Gulp

## About Proteus
[Proteus](http://github.com/thoughtbot/proteus) is a collection of useful
starter kits to help you prototype faster. It follows the
[thoughtbot styleguide](https://github.com/thoughtbot/guides) and includes our
favorite front end tools.

Includes
--------
* [Gulp](http://gulpjs.com): Converts files and task running
* [HAML](http://haml.info):
  Simple template markup
* [Coffeescript](http://coffeescript.org):
  Write javascript with simpler syntax
* [Sass](http://sass-lang.com):
  CSS with superpowers
* [Bourbon](http://bourbon.io):
  Sass mixin library
* [Neat](http://neat.bourbon.io):
  Semantic grid for Sass and Bourbon
* [Bitters](http://bitters.bourbon.io):
  Scaffold styles, variables and structure for Bourbon projects.
* [Express](http://expressjs.com): Lightweight Node web server

We also recommend [Refills](http://refills.bourbon.io/) for prepackaged interface patterns.

Getting Started
---------------
Set up your project in your code directory
```
git clone https://github.com/thoughtbot/proteus-gulp.git your-project-folder
cd your-project-folder
git remote rm origin
git remote add origin your-repo-url
```

Install the dependencies
```
npm install
```

Run the server
```
gulp
```

Deploy to Github Pages
```
gulp deploy
```

Or install the [Proteus gem](https://github.com/thoughtbot/proteus) and enjoy some shortcuts.

Stylesheets, images, fonts, and javascript files go in the `/source/assets/` directory.
Vendor stylesheets and javascripts should go in each of their `/vendor/` directories.
The source folders for images and fonts have a `.keep` file in them so they can be in the repo, but you can remove those files.

Contributing
------------

If you have problems, please create a
[GitHub Issue](https://github.com/thoughtbot/proteus-gulp/issues)

Have a fix or want to add a feature? Open a
[Pull Request](https://github.com/thoughtbot/proteus-gulp/pulls)


Credits
-------

[![thoughtbot](http://images.thoughtbot.com/bourbon/thoughtbot-logo.svg)](http://thoughtbot.com)

This application is maintained and funded by [thoughtbot, inc](http://thoughtbot.com/community)

Thank you to all [the contributors](https://github.com/thoughtbot/proteus-middleman/contributors)!

License
-------

The names and logos for thoughtbot are trademarks of thoughtbot, inc.

Proteus Gulp is Copyright © 2014 thoughtbot, inc. It is free software, and may be
redistributed under the terms specified in the LICENSE file.
