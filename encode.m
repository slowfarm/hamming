function output = encode(input, max_len)
len = length(input); % ����� �������� �������
r = max_len - len; % ���������� ����������� ���
G = generator_matrix(r); % ����������� ������� ��������
output = gf(input) * G; %������� ������
output = output.x;
end