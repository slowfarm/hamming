function [field] = hamming_matrix(k)
field = generator_matrix(k);
[a, b] = size(field);
field = [eye(k) field(:, a+1:b)'];
end