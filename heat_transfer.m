function heat_transfer
n = input("Number of elements: ");
h = 2 / n;

% rysowanie elementów
if n <= 50
    plot_elements(n)
end

% wypełnianie macierzy wartościami B(u, v)
M = zeros(n,n);
for i=1:n
    M(i, i) = B_u_v(i - 1, i - 1, h);
    if i - 1 > 0
        M(i, i - 1) = B_u_v(i - 2, i - 1, h);
    end
    if i < n
        M(i, i + 1) = B_u_v(i - 1, i, h);
    end
end

% wypełnanie macierzy z wartościami L(v)
values = zeros(n, 0);
for i=1:n
    values(i, 1) = L_v(i - 1, h, n);
end

% rozwiązywanie układu równań
result = gauss_solve(M, values);

% obliczanie wartości u(xi)
x = linspace(0, 2, n + 1);
y = zeros(n + 1, 1);
for i=1:n + 1
    curr_y = 3 * e(x(i), n, h);
    for j=1:n
        curr_y = curr_y + result(j) * e(x(i), j - 1, h);
    end
    y(i, 1) = curr_y;
end

% rysowanie wykresu funkcji u
plot(x, y, 'LineWidth', 3);
title("Równanie transortu ciepła dla n = " + n);
xlabel("x");
ylabel("y");


end

