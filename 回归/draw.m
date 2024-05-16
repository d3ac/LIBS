clc; clear all; clear; close;
filename = 'C:\Users\10485\Desktop\matlab\数据\x - 副本.csv';
x = csvread(filename);
x = x';

filename2 = 'C:\Users\10485\Desktop\matlab\数据\c - 副本.csv';
y = csvread(filename2);

mdl = fitlm(x,y);
plot(mdl);
