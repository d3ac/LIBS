%%
%导入数据
clear,clc
tic
A1 = xlsread('H:\煤样数据\20210715标准煤样\first\GBW11102c.csv','A2:LM12299');
A2 = xlsread('H:\煤样数据\20210715标准煤样\first\GBW11103m.csv','A2:LM12299');
A3 = xlsread('H:\煤样数据\20210715标准煤样\first\GBW11105h.csv','A2:LM12299');
A4 = xlsread('H:\煤样数据\20210715标准煤样\first\GBW11107f.csv','A2:LM12299');
A5 = xlsread('H:\煤样数据\20210715标准煤样\first\GBW11108s.csv','A2:LM12299');
A6 = xlsread('H:\煤样数据\20210715标准煤样\first\GBW11109t.csv','A2:LM12299');
A7 = xlsread('H:\煤样数据\20210715标准煤样\first\GBW11109u.csv','A2:LM12299');
A8 = xlsread('H:\煤样数据\20210715标准煤样\first\GBW11111s.csv','A2:LM12299');
A9 = xlsread('H:\煤样数据\20210715标准煤样\first\GBW11111t.csv','A2:LM12299');
toc
%%
%寻找C谱线247.86nm位置
tic
a1 = find(A1(:,1)>247.8&A1(:,1)<247.9,1);%寻找C谱线247.86nm位置
B1 = A1(a1,2:end);
a2 = find(A2(:,1)>247.8&A2(:,1)<247.9,1);%寻找C谱线247.86nm位置
B2 = A2(a2,2:end);
a3 = find(A3(:,1)>247.8&A3(:,1)<247.9,1);%寻找C谱线247.86nm位置
B3 = A3(a3,2:end);
a4 = find(A4(:,1)>247.8&A4(:,1)<247.9,1);%寻找C谱线247.86nm位置
B4 = A4(a4,2:end);
a5 = find(A5(:,1)>247.8&A5(:,1)<247.9,1);%寻找C谱线247.86nm位置
B5 = A5(a5,2:end);
a6 = find(A6(:,1)>247.8&A6(:,1)<247.9,1);%寻找C谱线247.86nm位置
B6 = A6(a6,2:end);
a7 = find(A7(:,1)>247.8&A7(:,1)<247.9,1);%寻找C谱线247.86nm位置
B7 = A7(a7,2:end);
a8 = find(A8(:,1)>247.8&A8(:,1)<247.9,1);%寻找C谱线247.86nm位置
B8 = A8(a8,2:end);
a9 = find(A9(:,1)>247.8&A9(:,1)<247.9,1);%寻找C谱线247.86nm位置
B9 = A9(a9,2:end);
toc
%%
%原始C谱线强度RSD
tic
c1 = B1 - mean(B1);
d1 = sqrt(sum((c1).^2)./(324-1))/mean(B1);
c2 = B2 - mean(B2);
d2 = sqrt(sum((c2).^2)./(324-1))/mean(B2);
c3 = B3 - mean(B3);
d3 = sqrt(sum((c3).^2)./(324-1))/mean(B3);
c4 = B4 - mean(B4);
d4 = sqrt(sum((c4).^2)./(324-1))/mean(B4);
c5 = B5 - mean(B5);
d5 = sqrt(sum((c5).^2)./(324-1))/mean(B5);
c6 = B6 - mean(B6);
d6 = sqrt(sum((c6).^2)./(324-1))/mean(B6);
c7 = B7 - mean(B7);
d7 = sqrt(sum((c7).^2)./(324-1))/mean(B7);
c8 = B8 - mean(B8);
d8 = sqrt(sum((c8).^2)./(324-1))/mean(B8);
c9 = B9 - mean(B9);
d9 = sqrt(sum((c9).^2)./(324-1))/mean(B9);

toc
%%
%显示原始数据谱线RSD
D = [d1 d2 d3 d4 d5 d6 d7 d8 d9];
t= 1:9;
figure(11)
plot(t,D,'o',t,D)
title('原始数据RSD')