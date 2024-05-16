%%
%马氏距离剔除异常值,舍去100个值，保留70%的数据
C = [B1;B2;B3;B4;B5;B6;B7;B8;B9];
u1 = size(C,1);
ZZ = zeros(9,100);
for j = 1:u1
    X = C(j,:);
    figure(j)
    plot(X)
    u = mean(X);%求均值
    n = size(X,2);
    for i = 1:n
        newdata = [X(:,i);u];
        cov_w = cov(newdata);%求协方差矩阵
        dist(i) = (X(:,i)-u)*cov_w*(X(:,i)-u)';%求每个样本到u的马氏距离
    end
    [a,b] = sort(dist);%对马氏距离排序
    k1 = a(225:end);
    k2 = b(225:end);
    text(k2,X(:,k2),'o','color','r')
    ZZ(j,:) = k2;
end
