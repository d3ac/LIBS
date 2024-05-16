%%
%原始数据
clear,clc
AA = xlsread('C:\Users\10485\Desktop\基线校正、异常值剔除m文件\未处理数据\14-std\20211201GBW\GBW11113L-20211202.csv','A2:LM12299');
Z1 = zeros(12298,1);
for i_1 = 1:12298
    M_junzhi = mean(AA(i_1,2:end));
    Z1(i_1,1) = M_junzhi;
end
a = AA(:,1);b = Z1(:,1);
plot(a,b)
%% Run the BEADS algorithm
% Filter parameters
fc = 0.016;     % fc : cut-off frequency (cycles/sample)
d = 1;          % d : filter order parameter (d = 1 or 2)

% Positivity bias (peaks are positive)
r = 6;          % r : asymmetry parameter

% Regularization parameters
amp = 0.8;      
lam0 = 0.5*amp;
lam1 = 5*amp;
lam2 = 4*amp;

tic
[x1, f1, cost] = beads(b, d, fc, r, lam0, lam1, lam2);
toc
%%
% Display the output of BEADS
subplot(2,1,1)
plot(a,b)
xlabel('Wavelength(nm)');ylabel('Intensity(a.u)');
title('基线校正前')
subplot(2,1,2)
plot(a,x1)
xlabel('Wavelength(nm)');ylabel('Intensity(a.u)');
title('基线校正后')
%%
