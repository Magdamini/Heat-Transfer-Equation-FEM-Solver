function de_val = e_derivative(x, i, h)
    if (x < (i - 1) * h || x > (i + 1) * h)  %poza przediałem (x_i-1, x_i+1)
        de_val = 0;
    elseif x < i * h
        de_val = 1 / h;
    else
        de_val = -1 / h;
    end 
end

