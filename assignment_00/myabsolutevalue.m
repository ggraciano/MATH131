function [a] = myabsolutevalue(n)
    if n < 0
        b = n * -1;
        a = b;
    else
        a = n;
    end
    fprintf('%f',a)
end
