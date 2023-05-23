def gram(f):
    """
    Return Gram Matrix of function
    """
    dr = f.derivative()
    return matrix([[i*j for j in dr.columns()] for i in dr.columns()])

def gramdet(f):
    """
    Return sqrt(Gram(f))
    """
    return sqrt(gram(f).determinant()).simplify_full()

class SurfaceFunc:
    # Sphere range: r X (0,pi) X (0, 2*pi)
    Sphere(r, theta, psi) = (r*sin(theta)*cos(psi), r*sin(theta)*sin(psi), r*cos(theta))
    Circle(r, theta) = (r*cos(theta),r*sin(theta))
    

def surface_integral(f,r,ranges):
    expr = f(r)*gramdet(r)
    for v,ran in zip(r[0].args(), ranges):
        expr = expr.integral(v, ran[0],ran[1])
    return expr.simplify_full()

