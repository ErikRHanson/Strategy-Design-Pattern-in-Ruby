require_relative 'report'

report = Report.new( HTMLFormatter.new )
report.output_report

puts
puts

report.formatter = PlainTextFormatter.new
report.output_report
