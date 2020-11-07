clc;
clear all;
x=importdata('S_new_1_R2D7.mat');
y1=abs(x(1,:));
y2=y1(:,1:12000);
y3=abs(x(2,:));
y4=y3(:,1:12000);
fs=1000;                                            
t1 = 1/fs;                                                 
L=12000;                                           
t = (0:L-1)*t1;  
subplot(2,2,1)
plot(t,y2);
grid on
subplot(2,2,2)
plot(t,y4); 
grid on

Nsamps = length(y4);                    
f = 1000*(0:Nsamps/2-1)/Nsamps;           

I_fft = abs(fft(y2));                 
I_fft = I_fft(1:Nsamps/2);              

Q_fft = abs(fft(y4));               
Q_fft = Q_fft(1:Nsamps/2);             
subplot(2,2,3)
plot(f,I_fft);
xlim([0 50]);
grid on
subplot(2,2,4)
plot(f,Q_fft);
xlim([0 50]);
grid on