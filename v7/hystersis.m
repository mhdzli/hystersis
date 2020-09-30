Im=input('Im=');
Pm=input('Pm=');
I=input('I=');
I=-I;
Pr0=Pm*(-I)/(-I+Im);
Pr0
w=1.5*Pr0;
Pr=input('Pr>Pr0');
if w<Pr
x=I:0.01:Im;
a=Pm*Im*Pr*I*(-Pm*I+I*Pr-Im*Pr+Pm*Im)/(Pm*I-I*Pr+Im*Pr)^2;
b=-Pm*Im/(Pm*I-I*Pr+Im*Pr)*I;
c=Pm*Im*Pr/(Pm*I-I*Pr+Im*Pr);
y=a./(x+b)+c;
subplot(2,2,1);plot(x,y);
hold on
subplot(2,2,1);plot(-x,-y);
hold on
z1=(Im+b)*(Im+b);
D1=-a/z1;
z2=(I+b)*(I+b);
D2=-a/z2;
A=-D2*Pm^2*(Im+I)^2/(-Pm+D2*I+Im*D2)^2;
B=(D2*I^2+Im*D2*I+Pm*Im)/(-Pm+D2*I+Im*D2);
C=D2*Pm*(Im+I)/(-Pm+D2*I+Im*D2);
D12=-A/((B+Im)*(B+Im));
X=-I:0.1:Im;
Y=A./(B+X)+C;
subplot(2,2,1);plot(X,Y);
hold on
subplot(2,2,1);plot(-X,-Y);
hold on
t=0:0.01:2*pi;
Z=Im*sin(t);
subplot(2,2,2);plot(t,Z);
hold on
t=0:0.001:pi/2;
i=-A./(C-Pm*sin(t))-B;
subplot(2,2,4);plot(t,i);
hold on
t=pi/2:0.001:pi;
i=-a./(c-Pm*sin(t))-b;
subplot(2,2,4);plot(t,i)
hold on
t=pi:0.001:3*pi/2;
i=A./(C+Pm*sin(t))+B;
subplot(2,2,4);plot(t,i);
hold on
t=3*pi/2:0.001:2*pi;
i=a./(c+Pm*sin(t))+b;
subplot(2,2,4);plot(t,i);
else
    fprintf('this curve do not exist');
end





