WWDC 2013 Notifier
=================

A quick-and-dirty script for OS X Mountain Lion that'll notify you verbally and via Notification Center when tickets for WWDC 2013 become available.

If you're like me, [you've paid someone to notify you](https://gumroad.com/l/wwdc) already, but after last night's false alarm, you're feeling extra paranoid. If that's you, then consider this your backup plan :).

Requirements
------------
* A Mac, running Mac OS X 10.8.x
* Ruby 1.9.3
* RubyGems (aka `gem`) and Bundler

Installation
------------
* Download the project, either via [the ZIP file](https://github.com/mmccroskey/wwdc2013/archive/master.zip), or by cloning the repo.
* `cd` into the project
* Run `bundle` to install dependencies
* Type `ruby daemon.rb start`


Make It Stop
------------
This script will repeatedly notify you until you kill it. To kill it, simply go back to the command line, `cd` to the project, and type `ruby daemon.rb stop`.


Improvements, Etc.
------------------

As stated above, this thing is quick-and-dirty. Any improvements are welcome via pull request.

About
-----

Matthew McCroskey, [@mmccroskey](http://twitter.com/mmccroskey), [http://matthewmccroskey.com](http://matthewmccroskey.com)