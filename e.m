function e_val = e(x, i, h)
    if x < (i - 1) * h || x > (i + 1) * h  %poza przediałem (x_i-1, x_i+1)
        e_val = 0;
    elseif x <= i * h
        e_val = x / h - i + 1;
    else
        e_val = -x / h + i + 1;
    end
end

