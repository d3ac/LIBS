clc; clear all; clear; close;
filename = 'C:\Users\10485\Desktop\matlab\����\x - ����.csv';
x = csvread(filename);
x = x';

filename2 = 'C:\Users\10485\Desktop\matlab\����\c - ����.csv';
y = csvread(filename2);

mdl = fitlm(x,y);
plot(mdl);
