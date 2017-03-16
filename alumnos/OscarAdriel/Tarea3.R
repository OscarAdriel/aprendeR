setwd('../aprendeR/02_manipulacion')
##Ejercicio 1
source('pew.R')
raw %>% gather(key = income, value = frequency,-religion) %>% kable()
##Ejercicio 2
misdatos_vertical <- data.frame(region = sort(rep(LETTERS[1:10], 3)),
                                type = rep(c('indice_desarrollo',
                                             'indice_marginacion',
                                             'indice_seguridad'), 10),
                                value = rnorm(30))

kable(misdatos_vertical)
misdatos_vertical %>% spread(key = type, value)

##Ejercicio 3

demandados <- c('Walmart',
                'Oxxo',
                'Electra',
                'Elmex Superior')
demandados2 <- c('Quien resulte responsable',
                 'Manpower',
                 'Compis de Outsourcing, S.A')
demandados3 <- c('IMSS', 'SAR', 'INFONAVIT', 'Otro compi')
datos_calculadora <- data.frame(id_exp = paste0('2_', 
                                                sample(1:200, 20),
                                                '_2017'),
                                d_1 = sample(demandados, 20, replace = T),
                                d_2 = sample(demandados2, 20, replace = T),
                                d_3 = sample(demandados3, 20, replace = T)) 
datos_calculadora %>% gather(d_, Dem, -id_exp,starts_with("d_")) %>%  group_by(Dem) %>% select(Dem) %>% summarize(n=n()) %>% kable() 

#NUNCA SUPE COMO ARREGAR EL WARNING QUE ME MANDA

