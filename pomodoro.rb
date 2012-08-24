#!/usr/bin/env ruby-local-exec
# encoding: UTF-8

require "bundler/setup"
require "colorize"
require "terminal-notifier"

WORK = 25 * 60 # 25 min in sec
REST = 5 * 60 # 5 min in sec
LONG = 15 * 60 # adding 15 min Rest in sec
REPEAT = 4 # count for long rest

def period(t, message, color)
  TerminalNotifier.notify(message, :title => 'Pomodoro', :group => 'Pomodoro')
  puts "#{message} #{t / 60} min.".colorize( color )
  sleep t # sec  
end

def exit?
  TerminalNotifier.notify('New workout?', :title => 'Pomodoro', :group => 'Pomodoro')
  puts "If you want to continue, press Return, or Ctrl+C to exit".colorize( :yellow )
  gets
end

begin
while true
  (0..REPEAT).each{ |count|
    period(WORK, "Work", :blue)
    count == REPEAT ? \
      period(LONG, "Long Rest", :red) : \
      period(REST, "Rest", :gray)
    # period(REST, "Rest", :gray) if count < REPEAT
    # period(LONG, "Long Rest", :red) if count == REPEAT
    exit?
  }
end
rescue Exception =>e
  puts "\nThank you for using Pomodoro!\nGoodbye!".colorize( :red )
  exit
end  
