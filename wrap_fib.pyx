cdef extern from "cfib.h":
	double cfib(int n)
	
from clockdeco import clock

@clock
def fib(n):
	"""Returns the nth Fibonacci number."""
	return cfib(n)