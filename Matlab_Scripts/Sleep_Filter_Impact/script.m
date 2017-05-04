d_prefilter = csvread('p002_no_filter.csv');
d_postfilter = csvread('p002_filter.csv');

t1 = d_prefilter(:,1);
t2 = d_postfilter(:,1);
m1 = (d_prefilter(:,2).^2 + d_prefilter(:,3).^2 + d_prefilter(:,4).^2) .^0.5;
m2 = (d_postfilter(:,2).^2 + d_postfilter(:,3).^2 + d_postfilter(:,4).^2) .^0.5;

plot(t1,m1)
hold on
plot(t2,m2)
xlabel('Time (ms)')
ylabel('Acceleration (m/s^2)')
title('Impact of Filter')
legend('Unfiltered Data','Filtered Data with N=21 Moving Average Filter')