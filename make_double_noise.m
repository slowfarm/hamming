function output = make_double_noise(input)
input = gf(input);
len = length(input);% ������� ����� �������
output = input;
i = randi(len);% �������� ��������
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