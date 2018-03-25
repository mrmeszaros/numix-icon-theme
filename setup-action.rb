#!/usr/bin/env ruby

SIZES = [
	16,
	22,
	24,
	32,
	48,
	64
]

ARGV.each { |icon|
	puts "Setting up #{icon}..."
	SIZES.each { |size|
		puts "... #{size}"
		`ln -s Numix/#{size}/actions/#{icon}.svg z.#{size}.#{icon}.svg`
	}
}
if ARGV.size < 1
	puts 'No action icon specified!'
end
