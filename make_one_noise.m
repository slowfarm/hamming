function output = make_one_noise(input)
input = gf(input);
len = length(input);% ������� ����� �������
output = input;
i = randi(len);% �������� ��������
output(i) = output(i)+1;
output = output.x;
end