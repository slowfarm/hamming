function [field] = generator_matrix(m)
poly = prim_poly(m);
q = 2^m-1;
k = q - m;
field = zeros(k, q);

for i=1:k
    field(i,i:i+m) = poly;
end

for i = k:-1:2
    for j = i-1:-1:1
        if field(i,i) == field(j,i)
        field(j,:) = xor(field(i,:), field(j,:)); 
        end
    end
end
end