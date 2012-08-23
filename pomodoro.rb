#!/usr/bin/env ruby-local-exec
# encoding: UTF-8

require "bundler/setup"
require "colorize"
require "terminal-notifier"

WORK = 25 * 60 # 25 min in sec
REST = 5 * 60 # 5 min in sec
LONG = 10 * 60 # adding 10 min Rest in sec

while true
  (1..4).each{
    TerminalNotifier.notify('Go!!!', :title => 'Pomodoro', :subtitle => 'Begining', :group => 'Pomodoro')
    puts "Work #{WORK} sec.".colorize( :blue )
    sleep WORK # sec
    TerminalNotifier.notify('Its time to relax!', :title => 'Pomodoro', :subtitle => 'Well done', :group => 'Pomodoro')
    puts "Rest #{REST} sec.".colorize( :gray )
    sleep REST #sec
    TerminalNotifier.notify('Let us work?', :title => 'Pomodoro', :subtitle => 'Quest', :group => 'Pomodoro')
    puts "If you want to continue, press Return, or Ctrl+C to exit".colorize( :yellow )
    begin
      gets
    rescue Exception => e
      puts "\nThank you for using Pomodoro!\nGoodbye!"
      exit
    end
  }
  puts "Rest #{LONG} sec. additional...".colorize( :red )
  TerminalNotifier.notify('Long Rest!', :title => 'Pomodoro', :subtitle => 'Rest', :group => 'Pomodoro')  
  sleep LONG #sec  
end
