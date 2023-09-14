Y = rand(2);
disp(Y)

n = input('¬ведите размер матрицы');
A = rand(n,n);
for i=1:n
    for j=1:n
        if i<j
            B(i,j)=A(i,j)*sin(A(i,j));
        else
            B(i,j)=A(i,j)+sin(A(i,j));
        end
    end
end

B
A1=diag(A)
B1=diag(B)
minA=min(A1)
minB=min(B1)
% B(2,3)