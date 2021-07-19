# Passando as respostas do form de horario da monitoria para o R

# Primeiro vamos carregar os pacotes necessários, para este exercício usaremos apenas o tidyverse

library(tidyverse)

# Importando a planilha Excel para o R (importante salvar como .csv)
adress <- "C:/Users/Mateus/Documents/monstat1/respalunos.csv"
read.csv2(adress) -> resp

# resp é uma lista de 32 variaveis, cada um contendo a resposta individual de um aluno
## Agora vamos separar seus elementos. O formato .csv separa os objetos por virgula

sapply(resp, strsplit, split = ",") %>% #transformar a lista em um vetor de textos
unlist() -> t3

# Descartar o horário de cada resposta, queremos apenas dia da semana e horario

t3 %>% discard(
  grepl(pattern = "2021", x = t3) #descartamos tudo que tem 2021
) -> t4 
keep(t4, 
  grepl(pattern = "feira|30", x = t4) #mantemos tudo que tinha "feira" ou "30", para manter os dias da semana e as horas
) -> t5
unlist(strsplit(t5, split = " ")) -> t6 #ficamos com um vetor com os dias e os horarios separados
t6

t6 %>% keep (
  grepl(pattern = "feira", t6)
) -> diasp #salvando um vetor apenas com os dias
#corrigindo o erro na palavra "terça-feira"
gsub(pattern = "TerÃ§a-feira", replacement = "Terca-feira", diasp) -> dias

t6 %>% keep (
  grepl(pattern = "30", t6)
) -> horas #um vetor apenas com as horas

data.frame(dias, horas) -> dfrespostas # juntando ambos em um DataFrame

#Finalmente, agrupamos por dia e hora e contamos as interceções

dfrespostas %>%
  group_by(dias, horas) %>%
  summarise(cont = n()) %>% #agora usamos pivot_wider para separar por dias
  pivot_wider(
    names_from = dias, 
    values_from = cont) -> final

# Nosso resultado final esta fora de ordem dos dias da semana, portanto vamos reordena-los

final[, c(1, 4, 6, 2, 3, 5)] -> bonito

# Para visualizar o grafico, usaremos o dataframe que contem os dias, o horario e a contagem

dfrespostas %>%
  group_by(dias, horas) %>%
  summarise(cont = n()) -> dfg
dfg$dias <- factor(dfg$dias, levels = c("Segunda-feira", "Terca-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira"))
# Agora criando um grafico

ggplot(dfg) +
  geom_col(aes(x = horas, y = cont)) +
  facet_wrap(~ dias)
