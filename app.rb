#!/usr/bin/env ruby

require "httparty"
require "diffy"

$path = File.expand_path File.dirname(__FILE__)
$path << "/"

$path_to_site = "https://developer.apple.com/wwdc"

$test = true

class Notifier

	def fire_alert
		puts `say 'ALERT: Double U Double U Dee See Twenty Thirteen Tickets May Be Available!'`
		puts `terminal-notifier-notify -message 'Click here to get them' -remove '1' -title 'WWDC 2013 Tickets Available' -open '#{$path_to_site}'`
	end

	def code_loop
		response = HTTParty.get($path_to_site)
		if (response.code != 200)
			fire_alert
		else
			wwdc2012 = ""
			wwdc2012_file = File.open($path+'wwdc2012.html', 'r') do |f|
				wwdc2012 << f.read
			end

			wwdc2012 = wwdc2012.gsub(/\s+/, "")
			latest = response.body.gsub(/\s+/, "")

			diff = Diffy::Diff.new(latest, wwdc2012, :allow_empty_diff => true)
			diff_string = diff.to_s
			if diff_string.length >= 0 || $test
				fire_alert
			end

			sleep 5
			code_loop
		end
	end
end

notifier = Notifier.new
notifier.code_loop
