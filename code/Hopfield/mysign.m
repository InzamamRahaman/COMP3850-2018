function y = mysign(x)
    y1 = double(x < 1) * -1;
    y2 = double(x > 1) * 1;
    y = y1 + y2;
end

