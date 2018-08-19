function [y] = lagrange_poly(x,datx,daty)
    y = 0;
    sx = size(x,2);
    sdatx = size(datx,2);
    L = ones(sdatx,sx);
    for i = 1:sdatx
        for j = 1:sdatx
            if(i ~= j)
                L(i,:) = L(i,:).*(x-datx(j))/(datx(i)-datx(j));
            end
        end
    end
    for i = 1:sdatx
        y = y + daty(i) * L(i,:);
    end
end
