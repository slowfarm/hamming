function test1()
input = [1 0 0 1];
n = 7;
disp("input vector")
disp(input)
%%���� �� ��������� ������
output = decode(make_one_noise(encode(input, n)));
if input == output
    disp("one_noise success")
else 
    disp("one_noise error")
end
disp(output)

%%���� �� ������� ������
output = decode(make_double_noise(encode(input, n)));
if input == output
    disp("double_noise success")
else
    disp("double_noise error")
end
disp(output)
end