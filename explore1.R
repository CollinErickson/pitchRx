library('pitchRx')

dat <- scrape('2016-05-01','2016-05-10')

dat$pitch
plot(dat$pitch$px[1:1000],dat$pitch$pz[1:1000],col=factor(dat$pitch$type))
plot(dat$pitch$pfx_x[1:1000],dat$pitch$pfx_z[1:1000],col=factor(dat$pitch$type))
summary(dat$pitch$y0)
