function [c,n,err] = newtons_method(f, fp, x0, tol, N)
    n = 0;
    err = tol + 1;
    while err > tol && n < N
        x1 = x0-f(x0)/fp(x0);
        err = abs(x1-x0);
        if err < tol
            c = x1;
            break;
        else
            x0 = x1;
        end
        n = n + 1;
    end
end
