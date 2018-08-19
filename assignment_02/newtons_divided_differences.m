function [y] = newtons_divided_differences(x,datx,daty)
%{
    sx = size(x,2);
    sdatx = size(datx,2);
    y = ones(sx);
    F = ones(sdatx,sdatx);
    for i = 1:sdatx
        F(i,1) = daty(i);
    end
    for i = 2:sdatx
        for j = 1:sdatx-i+1
            F(j,i) = (F(j+1,i-1)-F(j,i-1))/(datx(j+i-1)-datx(j));
        end
    end
    diff = ones(sx);
    for i = 2:sdatx
        for j = 2:sx
            diff(j) = diff(j)*(x(j)-datx(i-1));
            y(j) = y(j) + diff(j)*F(1,i);
        end
    end
end
%}
    sx = size(x,2);
    sdatx = size(datx,2);
    F = ones(1,sdatx);
    y = ones(1,sx);
    for i = 1:sdatx
        F(i) = daty(i);
    end
    for i = 2:sdatx
        F(i:sdatx) = (F(i:sdatx)-F(i-1:sdatx-1))./ ...
            (datx(i:sdatx)-datx(1:sdatx-i+1));
    end
    y = y * F(sdatx);
%{
    for i = sdatx-1:-1:1
        y = y.*(x-datx(i)) + F(i);
    end
%}
    for i = 1:sdatx-1
        y = F(sdatx-i) + (x-datx(sdatx-i)).*y;
    end
end