#TAREA 1
lista<- list(a=10000*exp(1:123),b=1:20, c=sample.int(13, size = 10))
lapply(lista, mean)
lista$b[lista$b>2] <- NA
lista$c[lista$c<4] <- NA
lista$a[lista$a<49] <- NA
#PROMEDIO
char <- matrix(c('perro','gato','tigre', 'tigre','foca','zorro'), nrow = 2, ncol = 3, byrow = TRUE,dimnames = list(c("R1", "R2"),c("uno", "dos", "tres")))
grep("o",char)