function L_val = L_v(i, h, n)
    L_val = 20 .* e(0, i, h) - 3.* B_u_v(i, n, h);
end

