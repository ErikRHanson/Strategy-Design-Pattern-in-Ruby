require_relative 'htmlformatter'
require_relative 'plaintextformatter'

report = Report.new &HTML_FORMATTER
report.output_report

puts

report = Report.new do |context|
	puts("***** #{context.title} *****")
	context.text.each do |line|
		puts(line)
	end
end

report.output_report
