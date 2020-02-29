function [output] = decode(input)
output = gf(input);
len = length(output); % ����� �������� �������
r = log2(len+1); % ���������� ����������� ���
H = hamming_matrix(r); % ����������� ������� ��������
invH = H';
s = output * invH;
error_pos = 0;% ������� ������
for i = 1:len
    if s == invH(i,:)
        error_pos = i;
        break;
    end
end
if error_pos ~= 0
    output(error_pos) = output(error_pos) + 1;% ���������� ������
end
output = output.x;
output = output(1:len-r);% �������� ������� �����
end