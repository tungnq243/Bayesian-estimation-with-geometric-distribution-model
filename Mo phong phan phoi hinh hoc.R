# Co mau
n<- 100
# Xac suat thanh cong
theta<- 0.25
# Mau
set.seed(0)
x<-c()
x

# Uoc luong hop ly cuc dai
s.n<- sum(x); s.n
theta.MLE<- n/(n+s.n); theta.MLE
# Thong tin tien nghiem
g1<- 0.4
g2<- 0.2^2
# Tham so tien nghiem
b<- g1-1+g1*(1-g1)^2/g2
a<- b*g1/(1-g1)
curve(dbeta(x, shape1 = a, shape2 = b), 0, 1, lwd=2)
# Uoc luong Bayes
theta.Bayes<- (a+n)/(a+b+s.n+n);theta.Bayes
c(theta.MLE, theta.Bayes)
