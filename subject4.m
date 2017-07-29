%figure;
%subject four- male
[m1, fs4] = audioread('m1rcomae.wav');
%window_length = length(m1);
%transform_length = pow2(nextpow2(window_length));
%plot(m1);
%y1 = fft(m1, transform_length);

%figure;
sound1 = m1(2.4e+04:4.608e+04);
window_length = length(sound1);
transform_length = pow2(nextpow2(window_length));
%plot(sound1);
%figure('Name','F1 Sound 1','NumberTitle','off')
y1 = fft(sound1, transform_length);
frequency_range1 = (0:transform_length-1)*(fs4/transform_length);
power1 = y1.*conj(y1)/transform_length;
%plot(frequency_range1, power1);

%figure;
sound2 = m1(1.155e+05:1.392e+05);
window_length = length(sound2);
transform_length = pow2(nextpow2(window_length));
%plot(sound2);
%figure('Name','F2 Sound 2 ','NumberTitle','off')
y2 = fft(sound2, transform_length);
frequency_range2 = (0:transform_length-1)*(fs4/transform_length);
power2 = y2.*conj(y2)/transform_length;
%plot(frequency_range2, power2);

%figure;
sound3 = m1(2.196e+05:2.461e+05);
window_length = length(sound3);
transform_length = pow2(nextpow2(window_length));
%plot(sound3);
%figure('Name','F2 Sound 3 ','NumberTitle','off')
y3 = fft(sound3, transform_length);
frequency_range3 = (0:transform_length-1)*(fs4/transform_length);
power3 = y3.*conj(y3)/transform_length;
%plot(frequency_range3, power3);

%figure;
sound4 = m1(3.028e+05:3.29e+05);
window_length = length(sound4);
transform_length = pow2(nextpow2(window_length));
%plot(sound4);
%figure('Name','F2 Sound 4 ','NumberTitle','off')
y4 = fft(sound4, transform_length);
frequency_range4 = (0:transform_length-1)*(fs4/transform_length);
power4 = y4.*conj(y4)/transform_length;
%plot(frequency_range4, power4);


%figure;
sound5 = m1(3.961e+05:4.182e+05);
window_length = length(sound5);
transform_length = pow2(nextpow2(window_length));
%plot(sound5);
%figure('Name','F2 Sound 5','NumberTitle','off')
y5 = fft(sound5, transform_length);
frequency_range5 = (0:transform_length-1)*(fs4/transform_length);
power5 = y5.*conj(y5)/transform_length;
%plot(frequency_range5, power5);


%figure;
sound6 = m1(4.9e+05:5.149e+05);
window_length = length(sound6);
transform_length = pow2(nextpow2(window_length));
%plot(sound6);
%figure('Name','F2 Sound 6 ','NumberTitle','off')
y6 = fft(sound6, transform_length);
frequency_range6 = (0:transform_length-1)*(fs4/transform_length);
power6 = y6.*conj(y6)/transform_length;
%plot(frequency_range6, power6);

%figure;
sound7 = m1(5.896e+05:6.149e+05);
window_length = length(sound7);
transform_length = pow2(nextpow2(window_length));
%plot(sound7);
%figure('Name','F2 Sound 7 ','NumberTitle','off')
y7 = fft(sound7, transform_length);
frequency_range7 = (0:transform_length-1)*(fs4/transform_length);
power7 = y7.*conj(y7)/transform_length;
%plot(frequency_range7, power7);


%figure;
sound8 = m1(6.852e+05:7.092e+05);
window_length = length(sound8);
transform_length = pow2(nextpow2(window_length));
%plot(sound8);
%figure('Name','F2 Sound 8','NumberTitle','off')
y8 = fft(sound8, transform_length);
frequency_range8 = (0:transform_length-1)*(fs4/transform_length);
power8 = y8.*conj(y8)/transform_length;
plot(frequency_range8, power8);


%figure;
sound9 = m1(7.826e+05:8.079e+05);
window_length = length(sound9);
transform_length = pow2(nextpow2(window_length));
%plot(sound9);
%figure('Name','F2 Sound 9','NumberTitle','off')
y9 = fft(sound9, transform_length);
frequency_range9 = (0:transform_length-1)*(fs4/transform_length);
power9 = y9.*conj(y9)/transform_length;
plot(frequency_range9, power9);

%figure;
sound10 = m1(8.7424e+05:9.006e+05);
window_length = length(sound10);
transform_length = pow2(nextpow2(window_length));
%plot(sound10);
%figure('Name','F2 Sound 10','NumberTitle','off')
y10 = fft(sound10, transform_length);
frequency_range10 = (0:transform_length-1)*(fs4/transform_length);
power10 = y10.*conj(y10)/transform_length;
%plot(frequency_range10, power10);


figure('Name','Subject 4 Periodogram','NumberTitle','off')
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
sound(sound10, fs4);


global sub4;
sub4 = horzcat(y1, y2, y3, y4, y5, y6, y7, y8, y9, y10);
sub4 = sub4';
