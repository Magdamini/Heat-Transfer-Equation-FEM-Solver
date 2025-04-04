% solve matrix
function res = gauss_solve(A, B)
    n = size(A, 1);
    for c=1:n-1

        if abs(A(c, c)) < 10e-10
            idx = c;
            for i=c+1:n
                if A(i, c) ~= 0
                    idx = i;
                    break
                end
            end
            for p=c:n
                A(c, p) = A(c, p) + A(i, p);
            end
            B(c) = B(c) + B(i);
        end
            
        for r=c+1:n
            k = A(r, c) / A(c, c);
            A(r, c) = 0;
            for p=c+1:n
                A(r, p) = A(r, p) - k * A(c, p);
            end
            B(r) = B(r) - k * B(c);
        end
    end

    res = zeros(n, 1);

    for r=n:-1:1
        s = 0;
        for c=n:-1:r+1
            s = s + A(r, c) * res(c);
        end
        res(r) = (B(r) - s) / A(r, r);
    end

end

