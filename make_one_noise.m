function output = make_one_noise(input)
input = gf(input);
len = length(input);% Находим длину вектора
output = input;
i = randi(len);% Рандомим значение
output(i) = output(i)+1;
output = output.x;
end