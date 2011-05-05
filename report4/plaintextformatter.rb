require_relative 'report'


PLAIN_FORMATTER = lambda do |context|
	puts("***** #{context.title} *****")
	context.text.each do |line|
		puts(line)
	end
end


#class PlainTextFormatter
#	def output_report( context )
#		puts( "***** #{context.title} *****")
#		context.text.each do |line|
#			puts( line )
#	        end
#	end
#end

