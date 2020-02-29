function [field] = hamm(len)
poly = prim_poly(len);
m = length(poly) - 1;
q = 2^m - 1;
alpha_m = poly(1:m);
field = zeros(q, m);
field(1:m,:) = eye(m);
for k = m:q-1
    fvec = [0 field(k,:)];
    fvec(1:m) = xor(fvec(1:m), fvec(m+1)*alpha_m);
    field(k+1,:) = fvec(1:m);
end
field = field';
end