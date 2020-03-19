disp('Start');
a = audiorecorder;

recordblocking(a,5);
play(a);
y = getaudiodata(a);
figure(1);
plot(y);
n = length(y);
fsft = (-n/2:n/2 -1)/50;
yy = fft(y);

figure(2);
plot(fsft,abs(fftshift(yy)));