def fourier_coefficient(f):
    var("x, n")
    assume(n, "integer")
    f_(n) = (1/(2*pi)*(f(x)*e^(-i*n*x)).integral(x,-pi,pi)).expand().simplify_full()
    return f_

def fourier_coefficient_cos(f):
    var("x, n")
    assume(n, "integer")
    f_(n) = (f(x)*cos(-n*x)).integral(x,-pi,pi).expand().simplify_full()
    return f_

def fourier_coefficient_sin(f):
    var("x, n")
    assume(n, "integer")
    f_(n) = i*(f(x)*sin(-n*x)).integral(x,-pi,pi).expand().simplify_full()
    return f_

def fourier_an(f):
    var("x, n")
    assume(n, "integer")
    f_(n) = (f(x)*cos(-n*x)).integral(x,-pi,pi).expand().simplify_full()
    return f_