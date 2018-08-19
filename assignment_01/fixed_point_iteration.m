function [c,n,err] = fixed_point_iteration(g,x0,tol,N)
    n = 0;
    err = tol + 1;
    while err > tol && n < N
        c = g(x0);
        err = abs(x0-c);
        if err < tol
            break;
        else
            x0 = c;
        end
        n = n + 1;
    end
end
