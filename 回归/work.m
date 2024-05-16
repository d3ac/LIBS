%% 数据的预处理与输入
load data_C  %载入预先设置的数据
filename = 'C:\Users\surface\Desktop\项目\!工作区\data2.csv'; %定义要输入的波形图的名字
wave = readmatrix(filename); %输入波形图
%% 计算
ans = 0.0; %系数乘上数据的总和
now=1;     %相当于指针,指向数据预处理数据的某一位
for i = 1:12299
    if(now == 10) %防止矩阵访问越界
        break;
    end;
    if (wave(i,1) == C_data(1,now))  %说明已经找到了位置
        ans = ans + C_data(2,now) * wave(i,2);
        now = now +1;
    end;
end;
%% 输出到文件
fileid = fopen('result.csv','w');
dataname = 'C';
fprintf(fileid,'%s,%f\n',dataname,ans);

