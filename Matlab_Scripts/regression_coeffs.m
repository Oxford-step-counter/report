coeffs = [-8.1804, -0.8321/-8.1804];
x = -1:0.01:1;
y = sigmf(x,coeffs);
plot(x,y)
y_fitted = zeros(1,length(y));
y_fitted(find(y(:) >= 0.5)) = 1;
y_fitted(find(y(:) < 0.5)) = 0;
[c index] = min(abs(y-0.5))
hold on
plot(x,y_fitted)
title('Logistic Regression')
xlabel('Standard Deviation (m/s^2)')
ylabel('Probability of Asleep')
legend('Logistic Regression','Decision Boundary')

