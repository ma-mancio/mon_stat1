2 + 2
5465465464654 * 4546545465
#Addition: +
4 + 4
#Subtraction: -
4 - 2
#Multiplication: *
2 * 5
8 * 2
4 * 5

#Division: /
 10 / 2
#Exponentiation: ^
 2 ^3
#Modulo: %%
5 %% 2
10 %% 3
#log (base =, x =)
log(2)
#rnorm(2)
rnorm(10) -> normal

resultado <- 2 * 3
2 * resultado -> resultado2

(resultado2 / resultado) + 1
normal
# Numerico
1 2 3 
# String / character
texto <- "Esse e meu texto"
texto
# logical
TRUE
FALSE 
2 > 3
5540 > 8*9*5 
class(texto)
class(normal)
class(TRUE)
2 + 2
2 + "dois"
10 + TRUE
10 - FALSE
TRUE == 1
FALSE == 0
TRUE / "dois"

# <  menor que
10 < 5
# >  maior que
10 > 5
# <= menor ou igual a
10 <= 5
# >=  maior ou igual a
10 >= 5

4 == 2*2
4 != 2*2
# ==  igual a
10 == 5+5
10 == (100/50) * 5
TRUE == 1
# != diferente de 
TRUE != 1
FALSE != 1

resultado == resultado2 / 2

c(1, 2, 3, 4) -> vetor
vetor
c("Um", "dois", "tres")
c(TRUE, FALSE, TRUE)
c(1:4) -> vetor2
vetor + vetor2
vetor - vetor2
vetorerrado <- c(1, 10, "vinte")
vetorerrado
class(vetorerrado)
vetorerrado2 <- c(TRUE, FALSE, 25)
class(vetorerrado2)
x <- c(1:10, "contamina")
x["contamina"]
class(x)
x
c(1:10, 20:30, 350:355) -> y
y[15]
y[1]
y[1:10]
y[25]
y[5]
y[5]
y[1:10] <- 20:25
y[1:10]
y[4] / y[6]
2 #integer
class(2.3) #double
c(1:10)
y[1:10] + c(20:29)
sample(1:10)
sort(c(80, 75, 42, 90, 5540), decreasing = TRUE)
?sort
sort(c(1, 50, 15, 28), decreasing = TRUE)
5 == 6

trade_vector <- c(140, -50)
dias <- c("Seg", "Ter")
names(trade_vector) <- dias
trade_vector
stocks_vector <-  c("Segunda" = -24, "Terça" = -50)
trade_vector + stocks_vector
class(c)
class(sort)



notas_gennins <- c(1:5, 5, 8)
notas_gennins
nomes_gennins <- c("Naruto", "Kiba", "Rock Lee", "Hinata", "Sakura", "Sasuke")
names(notas_gennins) <- nomes_gennins
names(notas_gennins)[7] <- "Shikamaru"

notas_gennins
mean(notas_gennins)
max(names(notas_gennins))
min(names(notas_gennins))
notas_gennins
min(notas_gennins)
min(names(notas_gennins))
max(names(notas_gennins))
min(notas_gennins)
notas_gennins
min(names(notas_gennins))
?min

notas_gennins
summary(notas_gennins)
print(notas_gennins[1:3])
notas_gennins[1:3]
plot(notas_gennins)
notas_gennins > 4 -> melhores_gennins
notas_gennins[melhores_gennins]
notas_gennins[min(notas_gennins)]
notas_gennins[c("Sakura", "Sasuke")]
notas_gennins[!notas_gennins >= 4]
var(notas_gennins)
sd(notas_gennins)
median(notas_gennins)
mean(notas_gennins)

sd(notas_gennins[melhores_gennins]) == (sqrt(var(notas_gennins[melhores_gennins])))
sqrt(100)
sum(notas_gennins[c("Naruto", "Sakura", "Sasuke")])

notas_gennins["Naruto"] <- NA
notas_gennins
class(notas_gennins)
mean(notas_gennins)
min(notas_gennins)
?mean
mean(notas_gennins, na.rm = TRUE)
mean(notas_gennins[2:7])
min(notas_gennins, na.rm = TRUE)


time7notas1 <- c(5, 4, 1)
time7notas2 <- c(5, 5, 2)
time7notas3 <- c(5, 3, 3)
time7nomes <- c("Sakura", "Sasuke", "Naruto")
names(time7notas1) <- time7nomes
names(time7notas2) <- time7nomes
names(time7notas3) <- time7nomes
time7notas1
time7notas2
time7notas3
(time7notas1 + time7notas2 + time7notas3) -> Total
sum(time7notas1, time7notas2)

data.frame(4, 6, "texto")
data.frame("Genjutsu" = time7notas1, "Ninjutsu" = time7notas2,"Taijutsu" =  time7notas3) -> dftime7
dftime7
cbind(dftime7, Total) -> dftime7

rbind(dftime7, "Total" = c(sum(dftime7[1]), sum(dftime7[2]), sum(dftime7[3]), sum(dftime7[4]))) -> dftime7

dftime7[2, 2]
dftime7[1,4]
dftime7[1,]
dftime7[2,]
dftime7[3, 2:4]
]


palmerpenguins::penguins -> penguins
library(tidyverse)
head(penguins)

count(penguins, species)
penguins %>% count(species)


penguins %>%
  group_by(species) %>%
  filter(body_mass_g > mean(body_mass_g, na.rm = TRUE)) %>%
  group_by(sex, species) %>%
  summarise(cont = n())
