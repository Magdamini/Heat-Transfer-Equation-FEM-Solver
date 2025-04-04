% całkowanie numeryczne metodą kwadratury Gaussa
function B_val = B_u_v(i, j, h)
    if abs(i - j) > 1
        B_val = 0;
    else        
        % wyznaczam przedziały całkowania, w których funkcja jest niezerowa
        if i == j && i == 0
            a = 0;
            b = (j + 1) * h;
        elseif i == j
            a = (i - 1) * h;
            b = (j + 1) * h;
        else
            a = i * h;
            b = j * h;
        end
        B_val = e(0, i, h) .* e(0, j, h);
        x1 = (a - b) / 2 * (1 / sqrt(3)) + (a + b) / 2;
        x2 = (b - a) / 2 * (1 / sqrt(3)) + (a + b) / 2;
        B_val = B_val - (b - a) / 2 * (e_derivative(x1, i, h) * e_derivative(x1, j, h) ...
                + e_derivative(x2, i, h) * e_derivative(x2, j, h));
    end
end

