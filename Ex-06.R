png("plot-ex06.png", width = 600) #открываем файл для сохранения или создаем новый
set.seed(3)
x <- rt(n = 300, df = 3, ncp = 4)
e <- rnorm(n = 300, mean = 0, sd = 3)
par(mfrow = c(2, 1)) # изменяем размещение графиков: 2 строки, 1 столбец
hist(x, freq = F, ylim = c(0, 0.25), col = "pink") # строим гистограмму x, по вертикали откладываем вероятности
curve(dt(x, df = 3, ncp = 4), col = "blue", lwd = 2, add = T) # добавляем теоретическую плотность распределения с такими же числовыми характеристиками, как у x
lines(density(x), col = "red", lwd = 3) # добавляем плотность фактического распределения x
hist(e, freq = F, ylim = c(0, 0.15), col = "pink") # строим гистограмму e, по вертикали откладываем вероятности
curve(dnorm(x, mean = mean(e), sd = sd(e)), col = "blue", lwd = 2, add = T) # добавляем теоретическую плотность распределения с такими же числовыми характеристиками, как у e
lines(density(e), col = "red", lwd = 3) # добавляем плотность фактического распределения x
par(mfrow = c(1, 1)) # меняем размещение на исходное
dev.off() #закрываем файл
