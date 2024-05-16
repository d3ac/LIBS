%%
%谱线剔除异常值
E1 = B1;E2 = B2;E3 = B3;E4 = B4;E5 = B5;
E6 = B6;E7 = B7;E8 = B8;E9 = B9;
    for p = 1:100
        E1(ZZ(1,p)) = 0;
        E2(ZZ(2,p)) = 0;
        E3(ZZ(3,p)) = 0;
        E4(ZZ(4,p)) = 0;
        E5(ZZ(5,p)) = 0;
        E6(ZZ(6,p)) = 0;
        E7(ZZ(7,p)) = 0;
        E8(ZZ(8,p)) = 0;
        E9(ZZ(9,p)) = 0;
    end
    E1(:,find(sum(E1,1)==0)) = [];
    E2(:,find(sum(E2,1)==0)) = [];
    E3(:,find(sum(E3,1)==0)) = [];
    E4(:,find(sum(E4,1)==0)) = [];
    E5(:,find(sum(E5,1)==0)) = [];
    E6(:,find(sum(E6,1)==0)) = [];
    E7(:,find(sum(E7,1)==0)) = [];
    E8(:,find(sum(E8,1)==0)) = [];
    E9(:,find(sum(E9,1)==0)) = [];
%%
% 新数据谱线RSD
g1 = E1 - mean(E1);
h1 = sqrt(sum((g1).^2)./(316-1))/mean(E1);
g2 = E2 - mean(E2);
h2 = sqrt(sum((g2).^2)./(316-1))/mean(E2);
g3 = E3 - mean(E3);
h3 = sqrt(sum((g3).^2)./(316-1))/mean(E3);
g4 = E4 - mean(E4);
h4 = sqrt(sum((g4).^2)./(316-1))/mean(E4);
g5 = E5 - mean(E5);
h5 = sqrt(sum((g5).^2)./(316-1))/mean(E5);
g6 = E6 - mean(E6);
h6 = sqrt(sum((g6).^2)./(316-1))/mean(E6);
g7 = E7 - mean(E7);
h7 = sqrt(sum((g7).^2)./(316-1))/mean(E7);
g8 = E8 - mean(E8);
h8 = sqrt(sum((g8).^2)./(316-1))/mean(E8);
g9 = E9 - mean(E9);
h9 = sqrt(sum((g9).^2)./(316-1))/mean(E9);
%%
%显示新数据谱线RSD
H = [h1 h2 h3 h4 h5 h6 h7 h8 h9];
t= 1:9;
figure(10)
plot(t,H,'o',t,H)
title('新数据RSD')
