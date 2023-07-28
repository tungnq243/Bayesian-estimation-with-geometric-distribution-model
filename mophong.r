# Co mau
n<- 10
# Xac suat thanh cong
theta<- 0.25
# Mau ngau nhien
set.seed(0)
x<- rgeom(n, prob = theta)
x
# Uoc luong hop ly cuc dai
s.n<- sum(x); s.n
theta.MLE<- n/(n+s.n); theta.MLE
# Thong tin tien nghiem
g1<- 0.8
g2<- 0.12
#Tham so tien nghiem
b<- g1-1+g1*(1-g1)^2/g2
a<- b*g1/(1-g1)
# Uoc luong Bayes
theta.Bayes<- (a+n)/(a+b+s.n+n);theta.Bayes
c(theta.MLE, theta.Bayes)
