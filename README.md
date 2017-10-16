#ABOUT

This small program is designed to countdown fixed periods of time, just like the Pomodoro time management technique.

To interact with the user using a terminal and notification center of OSX 10.8

##Install

	$ git clone https://github.com/Juev/terminal-pomodoro.git
	$ cd terminal-pomodoro
	$ bundle install --path 'vendor'

##Using

I recommend using [rbenv](https://github.com/sstephenson/rbenv) with this program. If you don't want to use rbenv, you have to change the first line in `pomodoro.rb`:

*before*

	#!/usr/bin/env ruby-local-exec
	
*after*

	#!/usr/bin/env ruby
	
##Modules

[terminal-notifier](https://github.com/alloy/terminal-notifier)

[colorize](https://github.com/fazibear/colorize)