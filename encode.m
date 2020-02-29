function output = encode(input, max_len)
len = length(input); % длина входного вектора
r = max_len - len; % количество проверочных бит
G = generator_matrix(r); % порождающая матрица хэмминга
output = gf(input) * G; %кодовый вектор
output = output.x;
end