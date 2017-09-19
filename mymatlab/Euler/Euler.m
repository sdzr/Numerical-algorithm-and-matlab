function [t,y] = Euler(dydt,tspan,y0,h,varargin)
if nargin<4
    error('at least 4 input arguments required')
end
ti = tspan(1);
tf = tspan(2);
if ~(tf>ti)
    error('upper limit must be greatter than lower')
end
t = (ti:h:tf);
n = length(t);
if t(n)<tf
    t(n+1)=tf;
    n=n+1;
end
y = y0*ones(n,1);
for i= 1:n-1
    y(i+1)=y(i)+dydt(t(i),y(i),varargin{:})*(t(i+1)-t(i));
end
plot(t,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


end

