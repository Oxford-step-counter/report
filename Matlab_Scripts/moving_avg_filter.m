clear all
L = 51;
h = (1/L) * ones(1,L);
[a,w] = freqz(h);
w = w * (50/pi);
plot(w,mag2db(abs(a)))
title('Frequency Response of Moving Average Filter')
xlabel('Frequency (Hz)')
ylabel('Magnitude (dB)')