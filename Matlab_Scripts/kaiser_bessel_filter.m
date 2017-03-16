clear all
L = 51;
Np = (L-1) / 2;
A = 60;
Fc = 3;
Fs = 100;
h = zeros(L,1);
alpha = 0.1102*(A - 8.7);
for i=1:length(h)
    k = i - 1;
    c = alpha * sqrt(1 - ((k-Np)/Np)^2);
    h(i) = (sinc(2*(k-Np)*Fc/Fs)*(2*Fc/Fs)) * besseli(0,c) / besseli(0,alpha);
end
% Normalization
h = h ./ sum(h);
[a,w] = freqz(h);
w = w * (50/pi);
plot(w,mag2db(abs(a)))
title('Frequency Response of Kaiser-Bessel Filter')
xlabel('Frequency (Hz)')
ylabel('Magnitude (dB)')