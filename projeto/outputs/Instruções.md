#Para obter o gráfico contido nessa pasta, foram executadas as seguintes etapas:
#1-	Criação arquivo em formato RDS “municipios_maior_pib.rds” a partir do arquivo RDS “pib_cid.rds”:
pib_cid <- readRDS("pib_cid.RDS")
library(tidyverse)
pib_cid %>%
  filter(nome_munic, impostos)
municipios_maior_pib <- pib_cid %>%
  select(nome_munic, pib_total) %>%
  arrange(desc(pib_total)) %>%
  head(10)
saveRDS(municipios_maior_pib, "municipios_maior_pib.rds")
#2-	Criação do gráfico “10 maiores PIBs por município no Brasil”:
municipios_maior_pib <- readRDS("municipios_maior_pib.rds")
library(tidyverse)
ggplot(municipios_maior_pib, aes(x = reorder(nome_munic, pib_total), y = pib_total)) +
  geom_col() +
  labs(title = "10 maiores PIBs por município no Brasil", x = "Município", y = "PIB") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
