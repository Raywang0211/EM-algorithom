%THE EM ALGORITHOM 
%we use people's hight to classify male and female 
%step 1. if we want to classify two classes we need to assume two Gaussian distribution first¡Aso we will got initial means¡Bvariance¡Bpi(weight of two Gaussian ) 
%step 2. we bring the data(hight) in both two Gaussian distribution get f1 and f2. 
%step 3. normalization the data (f1(1),f2(1)) (f1(2),f2(2))...... 
%step 4. calculate the rate of f1(1)¡Bf1(2)...f2(1)¡Bf2(2).... (f1n1¡Bf2n1) 
%step 5. sum (f1n1¡Bf2n1) sumof1 
%step 6. calculate the real number of x (x*fini) =u1of2 
%step 7. newmeans1=sum(u1of2)/sumof1 
%step 8. use the initial means and f1n1¡Bf2n1 to calculate the new variance 
%step 9. update pi sumof1/10
%finish one times iterative

function [newmeans1,v11,ppi1,newmeans2,v21,ppi2]=EM(means1,variance1,pppi1,means2,variance2,pppi2)

%initial data we got ten peoples' hight 
X = [180, 165, 157, 172, 163, 180, 155, 167, 159, 157];
X = sort(X); %from shorttest to tallest resort

% Assume there are two Gaussian distribution and pppi1=0.5 pppi2=0.5 
% We need to calculate the first times means and variance 
for i = 1:10
    f1(i) =pppi1*(sqrt((1/(2*pi*variance1)))*(exp(1)^(-(((X(i)-means1)^2)/(2*variance1)))));
end


for i = 1:10
   f2(i)  = pppi2*(sqrt((1/(2*pi*variance2)))*(exp(1)^(-(((X(i)-means2)^2)/(2*variance2)))));
end

normal1=f1+f2
f1n1=f1./normal1
f2n1=f2./normal1

sumof1=sum(f1n1)
sumof2=sum(f2n1)

u1of2=X.*f1n1
u2of2=X.*f2n1

newmeans1=sum(u1of2)/sumof1
newmeans2=sum(u2of2)/sumof2

a=0
for i = 1:10
    a=((X(i)-158.0620)^2).*f1n1(i)+a
    
end
v11 = a/sumof1

a=0
for i = 1:10
    a=((X(i)-172.0623)^2).*f2n1(i)+a
    
end
v21 = a/sumof2

ppi1=sumof1/10
ppi2=sumof2/10
end

