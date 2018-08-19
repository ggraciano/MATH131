function [c,n,err] = bisection_method(f,a,b,tol,N)
    n = 0;
    err = tol + 1;
    while err > tol && n < N
        c = (a+b)/2;
        if f(a) * f(b) > 0
            break;
        end
        if f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
        err = abs(a-b);
        if err < tol
            break
        end
        n = n + 1;
    end
end
