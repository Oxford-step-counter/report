clear all
L = 51;
sigma = 0.35;
h = zeros(L,1);
for i=1:length(h)
    h(i) = exp(-0.5 * ((i-1 - (L-1)/2)/(sigma*(L-1)/2))^2);
end
% Normalization
h = h ./ sum(h);
[a,w] = freqz(h);
w = w * (50/pi);
plot(w,mag2db(abs(a)))
title('Frequency Response of Gaussian Filter')
xlabel('Frequency (Hz)')
ylabel('Magnitude (dB)')