class Complejo

	def initialize(r=0, i=0)
		@r=r.to_f
		@i=i.to_f
	end

	def r
		@r
	end

	def i
		@i
	end

	def r=(r)
		@r=r
	end

	def i=(i)
		@i=i
	end

	def +(x=Complejo)
		y = Complejo.new
                y.r=@r+x.r
                y.i=@i+x.i
                puts "real: #{y.r} imag: #{y.i}"
		return y
        end

        def -(x=Complejo)
                y = Complejo.new
                y.r=@r-x.r
                y.i=@i-x.i
                puts "real: #{y.r} imag: #{y.i}"
                return y
        end

        def *(x=Complejo)
                y = Complejo.new
                y.r=(@r*x.r)-(@i*x.i)
                y.i=(@r*x.i)+(@i*x.r)
                puts "r: #{y.r} i: #{y.i}"
                return y
        end

        def /(x=Complejo)
                y = Complejo.new
                y.r=((@r*x.r)+(@i*x.i))/(x.r**2+x.i**2)
                y.i=((@i*x.r)-(@r*x.i))/(x.r**2+x.i**2)
                puts "r: #{y.r} i: #{y.i}"
                return y
        end

	def x(x)
		y=Complejo.new
		y.r=@r*x
		y.i=@i*x
                puts "r: #{y.r} i: #{y.i}"
		return y
	end
end
