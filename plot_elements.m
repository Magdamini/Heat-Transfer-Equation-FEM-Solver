function plot_elements (n)
h = 2 / n;
hold on
for i=0:n
    x = linspace(0, 2, n + 1);
    y = zeros(n + 1, 1);
    for xi=1:n + 1
        y(xi, 1) = e(x(xi), i, h);
    end
    plot(x, y);
end
hold off
title(n + " elementów");
xlabel("x");
ylabel("y");
disp("Press space to plot result")
pause

end

