coeffs = [0.5707, -2.6377];
coeffs = [-2.6377, -0.5707/-2.6377];
x = -10:0.01:10;
y = sigmf(x,coeffs);
plot(x,y)
y_fitted = zeros(1,length(y));
y_fitted(find(y(:) >= 0.5)) = 1;
y_fitted(find(y(:) < 0.5)) = 0;
hold on
plot(x,y_fitted)
title('Logistic Regression')
xlabel('Standard Deviation (m/s^2)')
ylabel('Probability of Asleep')
legend('Logistic Regression','Decision Boundary')

