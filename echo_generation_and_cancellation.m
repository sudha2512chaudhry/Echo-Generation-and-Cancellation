%Original Audio Signal
[x,fs]=audioread('CortanaVoice.wav');
p=audioplayer(x,fs);
play(p);
subplot(3,1,1);
plot(x);
title('Original Audio Signal');

%Adding Echo
num=[1,zeros(1,4800),0.9];
denom=[1];
y=filter(num,denom,x);
r=audioplayer(y,fs);
play(r);
subplot(3,1,2);
plot(y);
title('Adding Echo');

%Removing Echo
denom=[1,zeros(1,4800),0.9];
num=[1];
z=filter(num,denom,y);
s=audioplayer(z,fs);
play(s);
subplot(3,1,3);
plot(z);
title('Removing Echo');