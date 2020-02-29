function output = make_double_noise(input)
input = gf(input);
len = length(input);% Находим длину вектора
output = input;
i = randi(len);% Рандомим значение
k = randi(len);
output(i) = output(i)+1;
if k == i
    k = k+1;
end
if k == len
    k = 1;
end
output(k) = output(k)+1;
output = output.x;
end