pib_cid <- readRDS("pib_cid.RDS")
library(tidyverse)
pib_cid %>%
  filter(nome_munic, impostos)
municipios_maior_pib <- pib_cid %>%
  select(nome_munic, pib_total) %>%
  arrange(desc(pib_total)) %>%
  head(10)
saveRDS(municipios_maior_pib, "municipios_maior_pib.rds")