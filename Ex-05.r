png("plot-ex05.png", width = 600) #открываем файл для сохранения или создаем новый
set.seed(3)
x <- rt(n = 300, df = 3, ncp = 4)
e <- rnorm(n = 300, mean = 0, sd = 3)
y <- 12 + 2*x + e
m.x <- median(x)
m.y <- median(y)
layout(matrix(c(1, 2, 2, 1, 2, 2, 3, 4, 4), 3, 3, byrow = T)) # задаем расположение графиков
boxplot(y, pch = 0, cex = 1, range = 1.5, col = "violet") # строим коробчатую диаграмму вдоль оси х
plot(x, y, abline(v = m.x, h = m.y, lty = 3), pch = 21, cex = 1, col = "blue") #строим график разброса
plot(x, y, xlab = "", ylab = "", axes = F, col = "white") #добавляем невидимый график, чтобы заполнить пространство в левом нижнем углу
boxplot(x, pch = 21, cex = 1, horizontal = TRUE, range = 1.5, col = "violet") # строим коробчатую диаграмму вдоль оси у
dev.off() #закрываем файл
