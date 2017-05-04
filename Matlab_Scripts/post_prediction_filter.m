clear all;
filter_size = 3001;

mvg_coeffs = ones(1,filter_size) * (1/filter_size);
mvg_thres = 0.9;

x = linspace(-filter_size / 2, filter_size / 2, filter_size);

sigma = 200;
gauss_coeffs = exp(-x.^2 / (2 * sigma ^2));
gauss_coeffs = gauss_coeffs / sum(gauss_coeffs);
gauss_thres = 0.95;

plot(mvg_coeffs)
hold on
plot(gauss_coeffs)
legend('Moving Average Window', 'Gaussian Window')
xlabel('Sample')
ylabel('Window Value')
