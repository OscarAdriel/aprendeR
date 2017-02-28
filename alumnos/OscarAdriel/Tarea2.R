##primero
mtcars %>% group_by(am) %>% summarise(avg = mean(mpg))
##Segundo
mtcars %>% group_by(cyl) %>% summarise(std = sd(hp))
##Tercero
mtcars %>% mutate(mult= qsec*disp) #No entiendo mucho lo que pides en esta pregunta. Yo entiendo que creemos otra variable y la agregemos
##Cuarto
mtcars %>% filter(am == 1) %>% arrange(desc(hp)) %>% slice(1:10)
##Quinto
  #No funciona; segun yo lascomillas sencillas o doble es para llamar texto y aqui llamas un variable
