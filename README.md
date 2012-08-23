#ABOUT

This small program designed for fixing periods of time, which are used in the technique of time management Pomodoro.

To interact with the user using a terminal and notification center of OSX 10.8

##Install

	$ git clone https://github.com/Juev/terminal-pomodoro.git
	$ cd terminal-pomodoro
	$ bundle install --path 'vendor'

##Using

To use this program you want installed in the system [rbenv](https://github.com/sstephenson/rbenv).
Otherwise, before you run to change the first line:

*before*

	#!/usr/bin/env ruby-local-exec
	
*after*

	#!/usr/bin/env ruby
	
##Modules

[terminal-notifier](https://github.com/alloy/terminal-notifier)

[colorize](https://github.com/fazibear/colorize)