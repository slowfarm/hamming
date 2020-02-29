function test2()
input = [1 0 0 1 1 1 0 0 1 1 0];
n = 15;
disp("input vector")
disp(input)
%%тест на одиночную ошибку
output = decode(make_one_noise(encode(input, n)));
if input == output
    disp("one_noise success")
else 
    disp("one_noise error")
end
disp(output)

%%тест на двойную ошибку
output = decode(make_double_noise(encode(input, n)));
if input == output
    disp("double_noise success")
else
    disp("double_noise error")
end
disp(output)
end