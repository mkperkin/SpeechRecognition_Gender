figure;
%subject five- male two
[m3, fs6] = audioread('m3rcomae.wav');
%window_length = length(m3);
%transform_length = pow2(nextpow2(window_length));
plot(m3);
%y1 = fft(m3, transform_length);
%sound(m3,fs6);

%figure;
sound1 = m3(2.506e+04:4.845e+04);
window_length = length(sound1);
transform_length = pow2(nextpow2(window_length));
%plot(sound1);
%figure('Name','M3 Sound 1','NumberTitle','off')
y1 = fft(sound1, transform_length);
frequency_range1 = (0:transform_length-1)*(fs6/transform_length);
power1 = y1.*conj(y1)/transform_length;
%plot(frequency_range1, power1);

%figure;
sound2 = m3(6.321e+04:8.484e+04);
window_length = length(sound2);
transform_length = pow2(nextpow2(window_length));
%plot(sound2);
%figure('Name','M3 Sound 2 ','NumberTitle','off')
y2 = fft(sound2, transform_length);
frequency_range2 = (0:transform_length-1)*(fs6/transform_length);
power2 = y2.*conj(y2)/transform_length;
%plot(frequency_range2, power2);

%figure;
sound3 = m3(1.087e+05:1.306e+05);
window_length = length(sound3);
transform_length = pow2(nextpow2(window_length));
%plot(sound3);
%figure('Name','M3 Sound 3 ','NumberTitle','off')
y3 = fft(sound3, transform_length);
frequency_range3 = (0:transform_length-1)*(fs6/transform_length);
power3 = y3.*conj(y3)/transform_length;
%plot(frequency_range3, power3);
sound(sound3);

%figure;
sound4 = m3(1.545e+05:1.772e+05);
window_length = length(sound4);
transform_length = pow2(nextpow2(window_length));
%plot(sound4);
%figure('Name','M3 Sound 4 ','NumberTitle','off')
y4 = fft(sound4, transform_length);
frequency_range4 = (0:transform_length-1)*(fs6/transform_length);
power4 = y4.*conj(y4)/transform_length;
%plot(frequency_range4, power4);


%figure;
sound5 = m3(2.055e+05:2.227e+05);
window_length = length(sound5);
transform_length = pow2(nextpow2(window_length));
%plot(sound5);
%figure('Name','M3 Sound 5','NumberTitle','off')
y5 = fft(sound5, transform_length);
frequency_range5 = (0:transform_length-1)*(fs6/transform_length);
power5 = y5.*conj(y5)/transform_length;
%plot(frequency_range5, power5);


%figure;
sound6 = m3(2.487e+05:2.705e+05);
window_length = length(sound6);
transform_length = pow2(nextpow2(window_length));
%plot(sound6);
%figure('Name','F2 Sound 6 ','NumberTitle','off')
y6 = fft(sound6, transform_length);
frequency_range6 = (0:transform_length-1)*(fs6/transform_length);
power6 = y6.*conj(y6)/transform_length;
%plot(frequency_range6, power6);

%figure;
sound7 = m3(3.156e+05:3.343e+05);
window_length = length(sound7);
transform_length = pow2(nextpow2(window_length));
%plot(sound7);
%figure('Name','M3 Sound 7 ','NumberTitle','off')
y7 = fft(sound7, transform_length);
frequency_range7 = (0:transform_length-1)*(fs6/transform_length);
power7 = y7.*conj(y7)/transform_length;
%plot(frequency_range7, power7);



%figure;
sound8 = m3(3.696e+05:3.919e+05);
window_length = length(sound8);
transform_length = pow2(nextpow2(window_length));
%plot(sound8);
%figure('Name','M3 Sound 8','NumberTitle','off')
y8 = fft(sound8, transform_length);
frequency_range8 = (0:transform_length-1)*(fs6/transform_length);
power8 = y8.*conj(y8)/transform_length;
%plot(frequency_range8, power8);


%figure;
sound9 = m3(4.361e+05:4.575e+05);
window_length = length(sound9);
transform_length = pow2(nextpow2(window_length));
%plot(sound9);
%figure('Name','M3 Sound 9','NumberTitle','off')
y9 = fft(sound9, transform_length);
frequency_range9 = (0:transform_length-1)*(fs6/transform_length);
power9 = y9.*conj(y9)/transform_length;
%plot(frequency_range9, power9);

%figure;
sound10 = m3(4.98e+05:5.214e+05);
window_length = length(sound10);
transform_length = pow2(nextpow2(window_length));
%plot(sound10);
%figure('Name','F2 Sound 10','NumberTitle','off')
y10 = fft(sound10, transform_length);
frequency_range10 = (0:transform_length-1)*(fs6/transform_length);
power10 = y10.*conj(y10)/transform_length;
%plot(frequency_range10, power10);

figure('Name','Subject 6 Periodogram','NumberTitle','off')
subplot(10,1,1);
plot(frequency_range1, power1);
subplot(10,1,2);
plot(frequency_range2, power2);
subplot(10,1,3);
plot(frequency_range3, power3);
subplot(10,1,4);
plot(frequency_range4, power4);
subplot(10,1,5);
plot(frequency_range5, power5);
subplot(10,1,6);
plot(frequency_range6, power6);
subplot(10,1,7);
plot(frequency_range7, power7);
subplot(10,1,8);
plot(frequency_range8, power8);
subplot(10,1,9);
plot(frequency_range9, power9);
subplot(10,1,10);
plot(frequency_range10, power10);


global sub6;
sub6 = horzcat(y1, y2, y3, y4, y5, y6, y7, y8, y9, y10);
sub6 = sub6';



