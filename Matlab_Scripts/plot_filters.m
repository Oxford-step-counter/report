clear all;
subplot(2,2,1)
%Plot moving average
L = 51;
h = (1/L) * ones(1,L);
[a,w] = freqz(h);
w = w * (50/pi);
plot(w,mag2db(abs(a)))
title('Frequency Response of Moving Average Filter')
xlabel('Frequency (Hz)')
ylabel('Magnitude (dB)')
axis([0,50,-100,0])

subplot(2,2,2)
%Plot Gaussian
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
axis([0,50,-100,0])

subplot(2,2,3)
%Plot Hann
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
axis([0,50,-100,0])

subplot(2,2,4)
%Plot Kaiser-Bessel
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
axis([0,50,-100,0])