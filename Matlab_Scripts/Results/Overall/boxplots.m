clear all;

inhand = csvread('inhand.csv');
frontpocket = csvread('frontpocket.csv');
backpocket = csvread('backpocket.csv');
armband = csvread('armband.csv');
neckpouch = csvread('neckpouch.csv');
purse = csvread('purse.csv');

overall = [inhand, frontpocket, backpocket, armband, neckpouch, purse];
grp = [zeros(1,16), ones(1,6), 2 * ones(1,6), 3 * ones(1,6),4 * ones(1,6), 5 * ones(1,6)];
boxplot(overall, {'All'})
title('Boxplot of Optimal Parameters')
xlabel('All Data Recordings')
ylabel('Accuracy')
figure
boxplot(overall, grp)
