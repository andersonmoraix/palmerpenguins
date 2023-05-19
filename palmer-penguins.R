#carregando pacotes
library("ggplot2")
library("palmerpenguins")

#criando gráfico com as especies de pinguins
ggplot(data=penguins) +
  geom_point(mapping=aes(x = flipper_length_mm, y = body_mass_g))

#grafico que cada especie de pinguin e representada de uma cor diferente
ggplot(data=penguins) +
  geom_point(mapping=aes(x = flipper_length_mm, y = body_mass_g, color=species))

#formato grafico diferente para cada tipo de pinguin
ggplot(data=penguins) +
  geom_point(mapping=aes(x = flipper_length_mm, y = body_mass_g, shape=species))

#forma e cor grafica de cada espécie diferente
ggplot(data=penguins) +
  geom_point(mapping=aes(x = flipper_length_mm, y = body_mass_g, shape=species, color=species))

#alterando tamanho dos objetos graficos
ggplot(data=penguins) +
  geom_point(mapping=aes(x = flipper_length_mm, y = body_mass_g, shape=species, color=species, size=species))

#grafico em linha
ggplot(data=penguins) +
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g))

#grafico com dois elementos gráficos
ggplot(data=penguins) +
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))

#grafico em linha para cada especie
ggplot(data=penguins) +
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g, linetype=species))

#grafico com dois elementos gráficos geom jitter
ggplot(data=penguins) +
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_jitter(mapping=aes(x=flipper_length_mm, y=body_mass_g))

#criando grafico com diferentes faces, 1 para cada espécie
ggplot(data=penguins) +
  geom_point(mapping=aes(x = flipper_length_mm, y = body_mass_g, color=species)) + 
  facet_wrap(~species)

#colocando variável de sexo e espécie
ggplot(data=penguins) +
  geom_point(mapping=aes(x = flipper_length_mm, y = body_mass_g, color=species)) + 
  facet_grid(sex~species)
