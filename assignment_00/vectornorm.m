function [a] = vectornorm(n)
    b = 0;
    szdim = size(n, 2);
    for i = 1:szdim
        b = b + (n(i))^2;
    end
    a = sqrt(b);
end
