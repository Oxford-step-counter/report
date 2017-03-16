clear all
L = 51;
h = zeros(L,1);
for i=1:length(h)
    h(i) = 0.5 * (1 - cos(2*pi*i / (L-1)));
end
% Normalization
h = h ./ sum(h);
[a,w] = freqz(h);
w = w * (50/pi);
plot(w,mag2db(abs(a)))
title('Frequency Response of Hann Filter')
xlabel('Frequency (Hz)')
ylabel('Magnitude (dB)')