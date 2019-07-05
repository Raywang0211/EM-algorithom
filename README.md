# EM-algorithom
use matlab to calculate EM algorithom time to time

THE EM ALGORITHOM
we use people's hight to classify male and female 
step 1. if we want to classify two classes we need to assume two Gaussian distribution first，so we will got initial means、variance、pi(weight of two Gaussian ) 
step 2. we bring the data(hight) in both two Gaussian distribution get f1 and f2.
step 3. normalization the data (f1(1),f2(1)) (f1(2),f2(2))......
step 4. calculate the rate of f1(1)、f1(2)...f2(1)、f2(2).... (f1n1、f2n1)
step 5. sum (f1n1、f2n1) sumof1
step 6. calculate the real number of x (x*fini) =u1of2
step 7. newmeans1=sum(u1of2)/sumof1
step 8. use the initial means and f1n1、f2n1 to calculate the new variance
step 9. update pi sumof1/10
