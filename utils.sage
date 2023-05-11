def gram(r):
    dr = r.derivative()
    return sqrt(matrix([[i*j for j in dr.columns()] for i in dr.columns()]).determinant()).simplify_full()
