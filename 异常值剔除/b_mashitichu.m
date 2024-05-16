%%
%马氏距离剔除异常值
C = [B1;B2;B3;B4;B5;B6;B7;B8;B9];
u1 = size(C,1);
ZZ = zeros(9,105);
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
    T = ceil(n*0.02);%设置阀值
    Threshold = a(n-T);%定为阀值
    len = length(a);
    for ii = 1:len %遍历，如果大于等于阀值为异常点
       if a(ii)>= Threshold
       outlier(ii) = b(ii);
       end
    end
    k = find(outlier);
    iii = outlier(1,k:end);
    text(iii,X(:,iii),'o','color','r')
    ZZ(j,:) = iii;
end
