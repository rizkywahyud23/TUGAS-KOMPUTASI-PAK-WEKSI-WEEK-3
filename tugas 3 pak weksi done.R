data(airquality)
print(airquality)
library(DAAG)

# Menampilkan struktur data
str(airquality)
range(airquality$Wind)

# Histogram dengan break mulai dari 1
hist(airquality$Wind, 
     breaks = 0 + (0:5)*5, 
     ylim = c(0,100), 
     xlab = "Wind (MPH)", 
     main = "Histogram A: Breaks di 0,5,10, ...")

# Estimasi kepadatan
dens <- density(airquality$Wind)

hist(airquality$Wind, 
     breaks = 0 + (0:5)*5,
     ylim = c(0,0.12),
     probability = TRUE,
     xlab = "Wind (MPH)", 
     main = "Histogram + Density Curve")

lines(dens, col = "blue", lwd = 3)

# Boxplot dengan base R
boxplot(airquality$Wind, horiz = TRUE, 
        main = "Boxplot Wind",
        xlab = "Wind(MPH)")

# Stem-and-leaf plot 
stem(airquality$Wind[airquality$Month == "6"])

xrange <- range(airquality$Temp)
yrange <- range(airquality$Wind)

plot(Wind ~ Temp, data = airquality, 
     xlim = xrange, 
     ylim = yrange, 
     pch = 16, 
     pty = "s",
     main = "Scatterplot Tempeeratur berdasarkan kecepatan angin",
     xlab = "Temperatur", 
     ylab = "Kecepatan angin"
)

# Menggambar garis regresi dari variabel Wind terhadap Temp
abline(lm(Wind ~ Temp, data = airquality), col = "red", lwd = 2, lty = 2)