Compass Gridstrap
=================

Gridstrap is a Bootstrap inspired grid system, for both responsive and
non-responsive designs.

Requirements
============

Gridstrap is uses [HandySASS](http://github.com/dougwollison/handysass)'
responsive mixins. You must have HandySASS installed to use Gridstrap.


Installation
============

From the command line:

    (sudo) gem install gridstrap

Add to a project:

    // rails: compass.config, other: config.rb
    require "gridstrap"

    // command line
    compass install gridstrap

Or create a new project:

    compass -r gridstrap -f gridstrap project_directory


Setup/Usage
===========

The grid is setup via the `gridstrap` mixin:

	@include gridstrap();

You can use the responsive version by specifying a responsive mode:

	@include gridstrap(up);

This implements the mobile-first version of the grid. The different
modes are listed below:

* `"up"`: Mobile first, with the "plain" columns being overridden going up
  through tablet, desktop and widescreen.
* `"down"`: Desktop first, with the "plain" columns being overridden going
  up for widescreen, and down for tablet/mobile.
* `"exact"`: Isolated, the column rules don"t bubble up, and are localized
  to their respective breakpoints.
* `"none"`: No responsive, just a simple grid. You will have to specify the
  size for the .container when using this.
  
You can specify the breakpoints used via $sm/md/lg-screen variables. These
widths should be the width of the container + the gutter width. For example,
`$lg-screen: 1200px` and `$gutter: 30px` will result in a container of 1170px.

Gridstrap comes with a few additional classes:

* `.span-`: A centered column of a particular column size.
* `.of-`: A centered column of 1/Xth the container width.
* `.offset-`: Offset the column by X columns via margin.
* `.push/pull-`: Move the column over by X columns via left/right.

You can toggle these options by setting the $gridstrap-use-? booleans, or
with the `gridstrap-use` mixin:

	@include gridstrap-use(span, offset);

Pass a list containing the addons you want to use: span/of/offset/move.