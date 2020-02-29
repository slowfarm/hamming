function [output] = decode(input)
output = gf(input);
len = length(output); % длина входного вектора
r = log2(len+1); % количество проверочных бит
H = hamming_matrix(r); % проверочная матрица хэмминга
invH = H';
s = output * invH;
error_pos = 0;% позиция ошибки
for i = 1:len
    if s == invH(i,:)
        error_pos = i;
        break;
    end
end
if error_pos ~= 0
    output(error_pos) = output(error_pos) + 1;% исправляем ошибку
end
output = output.x;
output = output(1:len-r);% отбираем кодовое слово
end