#!/usr/bin/env ruby
status, title, message = File.read(ARGV.first).split("\n")
if status == 'failed'
  `terminal-notifier -title "#{title}" -message "#{message}" -appIcon "#{File.join(ENV['HOME'], '.scripts', 'guard-icon.png')}"`
end
