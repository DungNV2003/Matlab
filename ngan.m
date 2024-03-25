T=0.5;
t=linspace(-5*T,5*T,9*5);
for i=1:5
y=1-(abs(t*i)/(T*i));
end;
plot(t,y);