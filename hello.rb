hello = lambda do
	puts( 'Hello' )
	puts( 'I am inside a proc' )
end



hello.call


name = 'John'
proc = Proc.new do
	name = 'Mary'
end

proc.call
puts(name)


hello = lambda {
	puts( 'Hello,  I am inside a proc' )
}

hello.call

hello = lambda {puts('Hello, I am inside a proc, yet again')}
hello.call

# Actually, there is one real difference between do/end and the braces.  In Ruby expressions, the braces
#  have a higher precedence than the do/end pair.  Essentially, the braces are stickier in an expresson.
#  This difference usually rears its head only when you start dropping all of those optional parentheses.

return_24 = lambda {24}
puts( return_24.call )

multiply = lambda {|x, y| x * y}

n = multiply.call(20, 3)
puts( n )
n = multiply.call(10, 50)
puts( n )

def run_it
	puts( "Before the yield" )
	yield
	puts( "After the yield" )
end

run_it do
	puts( 'Hello' )
	puts( 'Coming to you from inside the block' )
end

def run_it_with_parameter
	puts( 'Before the yield' )
	yield(24)
	puts( 'After the yield' )
end

run_it_with_parameter do |x|
	puts( 'Hello from inside the proc' )
	puts( "The value of x is #{x}" )
end

def run_it_with_parameter( &block )
	puts( 'Before the call' )
	block.call( 42 )
	puts( 'After the call' )
end

my_proc = lambda {|x| puts( "The value of x is #{x}")}
run_it_with_parameter( &my_proc )


