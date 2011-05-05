require_relative 'htmlformatter'
require_relative 'plaintextformatter'

report = Report.new( HTMLFormatter.new )
report.output_report

puts
puts

report.formatter = PlainTextFormatter.new
report.output_report
