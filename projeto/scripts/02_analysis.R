municipios_maior_pib <- readRDS("municipios_maior_pib.rds")
library(tidyverse)
ggplot(municipios_maior_pib, aes(x = reorder(nome_munic, pib_total), y = pib_total)) +
  geom_col() +
  labs(title = "10 maiores PIBs por município no Brasil", x = "Município", y = "PIB") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))