%% ���ݵ�Ԥ����������
load data_C  %����Ԥ�����õ�����
filename = 'C:\Users\surface\Desktop\��Ŀ\!������\data2.csv'; %����Ҫ����Ĳ���ͼ������
wave = readmatrix(filename); %���벨��ͼ
%% ����
ans = 0.0; %ϵ���������ݵ��ܺ�
now=1;     %�൱��ָ��,ָ������Ԥ�������ݵ�ĳһλ
for i = 1:12299
    if(now == 10) %��ֹ�������Խ��
        break;
    end;
    if (wave(i,1) == C_data(1,now))  %˵���Ѿ��ҵ���λ��
        ans = ans + C_data(2,now) * wave(i,2);
        now = now +1;
    end;
end;
%% ������ļ�
fileid = fopen('result.csv','w');
dataname = 'C';
fprintf(fileid,'%s,%f\n',dataname,ans);

