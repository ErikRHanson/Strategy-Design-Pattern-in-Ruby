require_relative 'report.rb'

class HTMLFormatter
	def output_report(context)
		puts( '<html>')
		puts( '   <head>')
		# Output the rest of the report

		puts( "    <title>#{context.title}</title>")
		puts( '   </head>')
		puts( '   <body>')
		context.text.each do |line|
			puts( "   <p>#{line}</p>")
		end
		puts( '   </body>')

		puts( '</html>')
	end
end
